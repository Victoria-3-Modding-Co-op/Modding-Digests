# Script Documentation 1.13.10
## Table of Contents
* [Scopes](#scopes)
* [Effects](#effects)
* [Triggers](#triggers)
* [Event Targets](#event-targets)
* [Iterators](#iterators)
* [On Actions](#on-actions)
## Notes
* **Changed** means the description, scopes or anything related to the documentation for this element has changed
* The list of iterators do **not** include generated geographic region based iterators
* The on action scope is based on the script documentation, for more information see the `common/on_actions` directory
## Scopes
| Type | Scope | Supports Variables | Supports Effects | Supports Triggers | Save Game Identifier |
|--|--|--|--|--|--|
| Added | `container` | True | True | True | `container` |

## Effects
| Type | Effect | Description |
|--|--|--|
| Added | `add_tag` | Adds a tag to the script container in scope.   |
| Added | `clear_name` | Clears the name of the script container in scope.   |
| Added | `clear_parent` | Clears the parent of the script container in scope, making it freestanding.   |
| Added | `clear_tags` | Removes all tags from the script container in scope.   |
| Added | `create_container` | Creates a script container: a standalone scope that can hold variables, lists and maps.   |
| Added | `destroy_container` | Destroys the script container in scope.   |
| Added | `remove_tag` | Removes a tag from the script container in scope.   |
| Added | `renege_treaty_ports_with` | Void all treaty-port treaties scoped country hosts for the target foreign power, returning the ports to the host   |
| Added | `set_name` | Sets (or changes) the name of the script container in scope; accepts a literal or a flag reference (var:/scope:/flag:); reachable later via container:my_name.   |
| Added | `set_parent` | Sets the parent of the script container in scope; the container is destroyed when the parent becomes invalid.   |

## Triggers
| Type | Trigger | Trait | Description |
|--|--|--|--|
| Added | `container_exists` |  -  | True if a named script container exists   |
| Added | `has_any_tags` | Boolean | True if the script container in scope has any tags   |
| Added | `has_name` | Boolean | True if the script container in scope has a name   |
| Added | `has_parent` | Boolean | True if the script container in scope has a parent   |
| Added | `has_tag` |  -  | True if the script container in scope has the given tag   |
| Added | `has_tags` |  -  | True if the script container in scope has all of the given tags   |
| Added | `has_unreachable_ship_construction_fleet` | Boolean | Checks if a country is building a ship with a target fleet it will not be able to reach once built   |

## Event Targets
| Type | Event Target | Description |
|--|--|--|
| Added | `name` | Scope to the name (as a flag) of a script container |
| Added | `parent` | Scope to the parent of a script container |
| Added | `container` | Scope to a named script container (example: container:my_container) |

## Iterators
| Type | Iterator |
|--|--|
| Added | `{any\|every\|ordered\|random}_container` |
## On Actions
| Type | On Action | Scope |
|--|--|--|
| Added | `on_treaty_ports_inherited` | `none` |
| Added | `on_amendment_timeout` | `none` |

