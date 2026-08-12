# Script Containers
## Table of Contents
 * [Intro](#intro)
 * [Examples](#intro)
 * [Notes](#notes)
 * [Scopes](#scopes)
 * [Effects](#effects)
 * [Triggers](#triggers)
 * [Event Targets](#event-targets)
 * [Iterators](#iterators)
 * [Global Promotes (GUI)](#global-promotes-gui)
 * [ScriptContainer Promotes (GUI)](#scriptcontainer-promotes-gui)
 * [Console Commands](#console-commands)

## Intro
**Script Containers** are "void" scopes, which can hold variables, lists, maps and so on.
They are **global** scopes that can be created and deleted on demand. Their main use case is for modeling content which does not exist in the base game.

For example a container could represent an artwork and hold variables like prices, authors and so on.

## Examples
```
# Creating a container
create_container = {
    name = mona_lisa
    tags = { artwork painting }
    on_created = {
        set_variable = {
            name = price
            value = 100000
        }
        set_variable = {
            name = year
            value = 1517
        }
        add_to_variable_list = {
            name = artists
            target = flag:leonardo_da_vinci
        }
        set_variable = {
            name = owner
            value = c:FRA
        }
    }
}

# Increase price
container:mona_lisa = {
    set_variable = {
        name = price
        value = 200000
    }
}

# Great Britain now owns ALL artworks
every_container = {
    tag = artwork
    set_variable = {
        name = owner
        value = c:GBR
    }
}

# Oh no someone destroyed the mona lisa
container:mona_lisa = {
    destroy_container = yes
}
```

## Notes
 * `create_container` does not need **any** parameters, everything is optional, though it is recommended to at least add a mod specific tag so you can identify your own containers
 * Variables/lists/maps come for free. A container **is** a scope-with-variables, so every standard `set_variable`/`change_variable`/`add_to_variable_list`/`save_scope_as`/`[Scope.GetList]`/etc. should work on it with no container-specific syntax. The effects below are only the container identity operations (lifecycle, name, tags, parent).
 * The parent is a lifetime anchor, not containment. When the parent scope becomes invalid the container is auto-destroyed, but lazily, on the periodic dead-object sweep, so there's up to one tick of latency (not instantaneous). The parent can be **any** scope (country, character, formation, another container, etc.), and the link is one-way: the parent has no idea it has containers.
 * `create_container` is atomic on the parent. An invalid **or** self-referential parent **hard-fails** the whole creation: no container, no name, no `on_created` and the saved scope won't resolve. (A bad name, by contrast, does **not** cancel: the container is still created, just unnamed, with an error logged. A duplicate name logs an error and leaves it unnamed.)
 * `set_parent` with an invalid/self parent changes nothing and logs an error (the old parent stays).
 * A container cannot be its own parent (rejected). Longer cycles (A parent B, B parent A) are **not** detected and will never auto-cull, treat that as your responsibility, like any unowned container.
 * `name` accepts a literal **or** a runtime flag reference. `name = foo` and `name = flag:foo` are identical (both literal "foo"). To use a dynamic name, pass a reference that resolves to a flag at runtime: `name = var:x` or `name = scope:x`. It must resolve to a **flag** specifically: a number/country/unset scope is rejected.
 * There is no `every_scope_container`. To iterate one scope's containers, filter the global iterator: `c:GBR = { every_container = { parent = this } }`. Note this still scans all containers internally (the parent doesn't store a child list), so it's the same cost as the explicit filter.
 * Trigger tooltips are debug-only (rendered in pink, shown only in debug mode) so players never see them, use custom loc as needed.
 * Cleanup is your job. A container with no name, no saved scope, and no parent persists in the save (still reachable via `every_container`) until you `destroy_container` it. Each container also carries a full saved-variables block, so thousands of them grow the save, same trade-off as the void-character hack it replaces, just enumerable.

## Scopes
| Type  | Scope       | Supports Variables | Supports Effects | Supports Triggers | Save Game Identifier |
|-------|-------------|--------------------|------------------|-------------------|----------------------|
| Added | `container` | True               | True             | True              | `container`          |

## Effects
| Type  | Effect              | Description                                                                                                                                                            |
|-------|---------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Added | `add_tag`           | Adds a tag to the script container in scope.                                                                                                                           |
| Added | `clear_name`        | Clears the name of the script container in scope.                                                                                                                      |
| Added | `clear_parent`      | Clears the parent of the script container in scope, making it freestanding.                                                                                            |
| Added | `clear_tags`        | Removes all tags from the script container in scope.                                                                                                                   |
| Added | `create_container`  | Creates a script container: a standalone scope that can hold variables, lists and maps.                                                                                |
| Added | `destroy_container` | Destroys the script container in scope.                                                                                                                                |
| Added | `remove_tag`        | Removes a tag from the script container in scope.                                                                                                                      |
| Added | `set_name`          | Sets (or changes) the name of the script container in scope; accepts a literal or a flag reference (`var:`/`scope:`/`flag:`); reachable later via `container:my_name`. |
| Added | `set_parent`        | Sets the parent of the script container in scope; the container is destroyed when the parent becomes invalid.                                                          |

## Triggers
| Type  | Trigger            | Trait   | Description                                                                                     |
|-------|--------------------|---------|-------------------------------------------------------------------------------------------------|
| Added | `container_exists` | -       | True if a named script container exists (`container_exists = <name>`)                           |
| Added | `has_any_tags`     | Boolean | True if the script container in scope has any tags                                              |
| Added | `has_name`         | Boolean | True if the script container in scope has a name (`has_name = yes`)                             |
| Added | `has_parent`       | Boolean | True if the script container in scope has a parent                                              |
| Added | `has_tag`          | -       | True if the script container in scope has the given tag (`has_tag = <tag>`)                     |
| Added | `has_tags`         | -       | True if the script container in scope has all of the given tags  (`has_tags = { <tag> <tag> }`) |

## Event Targets
| Type  | Event Target | Description                                                                 |
|-------|--------------|-----------------------------------------------------------------------------|
| Added | `name`       | Scope to the name (as a flag) of a script container (`name ?= flag:<name>`) |
| Added | `parent`     | Scope to the parent of a script container                                   |
| Added | `container`  | Scope to a named script container (example: `container:<name>`)             |

## Iterators
| Type  | Iterator                                  | Description                                                                           |
|-------|-------------------------------------------|---------------------------------------------------------------------------------------|
| Added | `{any\|every\|ordered\|random}_container` | optional filters: `tag = <tag>` / `tags = { <tag> <tag> }` (all) / `parent = <scope>` |

## Global Promotes (GUI)
| Type  | Promote                | Return Type       | Description             |
|-------|------------------------|-------------------|-------------------------|
| Added | `GetContainer( Arg0 )` | `ScriptContainer` | Get a container by name |

## ScriptContainer Promotes (GUI)
| Type  | Promote                                            | Return Type       | Description                                                   |
|-------|----------------------------------------------------|-------------------|---------------------------------------------------------------|
| Added | `Scope.GetScriptContainer`                         | `ScriptContainer` | Convert a Scope (a variable for example) to a ScriptContainer |
| Added | `ScriptContainer.GetParent`                        | `Scope`           | Get the parent scope                                          |
| Added | `ScriptContainer.MakeScope`                        | `Scope`           | Get the scope of the container itself                         |
| Added | `ScriptContainer.GetCustom( CustomLocalization )`  | `CString`         | Resolve a custom localization on the container scope          |
| Added | `ScriptContainer.GetName`                          | `CString`         | Get the name string                                           |
| Added | `ScriptContainer.GetTagCount`                      | `int32`           | How many tags does the container have?                        |
| Added | `ScriptContainer.GetTagsString`                    | `CString`         | All tags as one string                                        |
| Added | `ScriptContainer.GetTooltipTag`                    | `CString`         | Tooltip tag for this container                                |
| Added | `ScriptContainer.GetVariableCount`                 | `int32`           | Get the number of variables a container holds                 |
| Added | `ScriptContainer.GetVariableListSize( ListName )`  | `int32`           | Get the size of a list on the container                       |
| Added | `ScriptContainer.GetVariableValue( VariableName )` | `CFixedPoint`     | Get a number variable from the container scope                |
| Added | `ScriptContainer.HasParent`                        | `bool`            | Does this container have a parent?                            |
| Added | `ScriptContainer.HasTag( TagName )`                | `bool`            | Does this container have a specific tag?                      |
| Added | `ScriptContainer.HasVariable( VariableName )`      | `bool`            | Does this container have a specific variable?                 |
| Added | `ScriptContainer.IsValid`                          | `bool`            | Does this container (still) exist?                            |

## Console Commands
| Type  | Promote                       | Description                                                                       |
|-------|-------------------------------|-----------------------------------------------------------------------------------|
| Added | `list_containers [tag]`       | ID / Name / Tags / Variables / Parent per container                               |
| Added | `print_container <name\|id>`  | ID / Name / Tags / Variables / Parent per container and also a full variable dump |
| Added | `remove_container <name\|id>` | Delete a container                                                                |
| Added | `count_containers`            | Count all containers                                                              |