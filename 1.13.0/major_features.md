# Major Modding Features 1.13.0
## Table of Contents
 * [Journal GUI inject](#journal-gui-inject)
 * [Custom Character Roles](#custom-character-roles)
 * [Hiding Law Groups](#hiding-law-groups)
 * [Resource Management Effects](#resource-management-effects)
 * [Character Renaming Effects](#character-renaming-effects)
 * [Straits](#straits)
 * [Ships](#ships)
 * [Interest Tiers](#interest-tiers)

## Journal GUI inject
We can now inject GUI elements into Journal Entries. This allows creating new modular GUIs.

### How
In Journal Entries a new `widget` block can be defined like this:
```
widget = {
    gui = "[path to gui file]"
    name = "[gui element name]"
    container = "[anchor point name]"
}
```
The `gui` parameter is the path to the gui file containing the custom element and `name` is the name of a gui element in that file.
Finally, the `container` parameter is where the gui element is injected.

The base game GUI hierarchy looks something like this:
- JE Icon / `custom_widget_container_je_icon` (will replace the other)
- `custom_widget_container_1`
- JE Timeout
- JE Status
- `custom_widget_container_2`
- scripted_buttons
- `custom_widget_container_3`
- scripted_progress_bars
- `custom_widget_container_4`
- JE Description
- `custom_widget_container_5`
- JE Involved Countries
- `custom_widget_container_6`
- JE Progress/Completion/Failure/Timeout
- `custom_widget_container_7`

### Example
These are excerpts from the base game:
```
je_meiji_restoration = {
    # ...
    widget = {
        gui = "gui/journal_entry_widgets/ep2_japan_widgets.gui"
        name = "widget_je_meiji_restoration_emperor"
        container = "custom_widget_container_je_icon"
    }
    
    widget = {
        gui = "gui/journal_entry_widgets/ep2_japan_widgets.gui"
        name = "widget_je_meiji_restoration_daimyos_list"
        container = "custom_widget_container_3"
    }
    # ...
}
```
In the gui file the injected elements are defined like this:
```
flowcontainer = {
    name = "widget_je_meiji_restoration_daimyos_list"
    # ...
}

flowcontainer = {
    name = "widget_je_meiji_restoration_emperor"
    # ...
}
```

For reference see the [journal entry](types/journal_entries.md?plain=1) documentation.

## Custom Character Roles
Character roles are not hardcoded anymore starting with 1.13.0. They gained a lot of flexibility for customization.

Modders can now create new character roles that either follow the existing types like "Politician" but are also able to create fully custom roles for modded content.

Role definitions allow definition of the following characteristics:
- Icon
- Archetype
- Title Format
- Modifiers
- Career Length
- Character Pool Spawning
- Building Holding Scores (See below)

### Building Holding Scores
When a new magnate is created, it will check which building it should own, it will pick the highest of the scores.

This calculation does include a random chance in the form of `HOLDING_TYPE_RANDOM_FACTOR`

For reference see the [character role](types/character_roles.md?plain=1) documentation.

## Hiding Law Groups
Law Groups now have an optional `enabled` trigger block.

If it is evaluating to `no` the law group will be totally hidden and deactivated for the country.

Ideology tooltips will also not include those deactivated law groups.

## Resource Management Effects
With 1.13 we have gained the ability to modify a states resources using effects. This means we no longer have to modify `map_data` to add resource depots.
They can now be added in `common/history` or `on_game_start` for better compatibility, and also they can be modified in a running game for some new mechanics.

The following effects were introduced:
- `add_resource_potential`
- `change_resource_potential`
- `remove_resource_potential`

For reference see the [trigger](docs/triggers.log) and [effect](docs/effects.log) documentation.

## Character Renaming Effects
Another new set of effects concerns character names. We can now change those in a running game using those effects.

The following effects were introduced:
- `set_first_name`
- `set_last_name`

For reference see the [effect](docs/effects.log) documentation.

## Straits
Straits replace canals, while also encompassing things like the strait of Gibraltar.

They are defined from two land provinces on each side of the strait as well as two sea nodes which get connected through the strait.

For reference see the [strait definition](types/strait_definitions.md?plain=1) documentation.

## Ships
Ships are now full standalone objects and definitions.
They are quite broad and more complex than I can really do justice in this format,
so instead I will link the corresponding documentation instead:
- [Ship Groups](types/ship_groups.md?plain=1)
- [Ship Types](types/ship_types.md?plain=1)
- [Ship Modification Slots](types/ship_modification_slots.md?plain=1)
- [Ship Modifications](types/ship_modifications.md?plain=1)
- [Ship Name Definitions](types/ship_name_definitions.md?plain=1)
- [Naval Mission Types](types/naval_mission_types.md?plain=1)
- [Naval Battle Conditions](types/naval_battle_conditions.md?plain=1)

Since ships are no longer combat units they are also created differently:
```
create_military_formation = {
    type = fleet
    hq_region = sr:region_brazil
    name = Armada_Nacional

    ship = {
        type = ship_type:ship_type_ship_of_the_line
        count = 1
    }
    ship = {
        type = ship_type:ship_type_frigate
        count = 8
    }
}
```

There are also a lot of new [triggers](docs/triggers.log), [effects](docs/effects.log) and [event targets](docs/event_targets.log) surrounding ships and their attributes.

## Interest Tiers
Now interest in a strategic region is no longer binary. Instead, it is a tiered system where each tier is a defined type.

The same goes with the stances an AI can take about a strategic region.

For reference see the [interest tier type](types/interest_tier_types.md?plain=1) and [AI strategic region stance type](types/ai_strategic_region_stance_types.md?plain=1) documentation.
