# Script Documentation 1.13.9
## Table of Contents
 * [Effects](#effects)
 * [Triggers](#triggers)
 * [Event Targets](#event-targets)
 * [Iterators](#iterators)
 * [On Actions](#on-actions)
## Notes
 * **Changed** means the description, scopes or anything related to the documentation for this element has changed
 * The list of iterators do **not** include generated geographic region based iterators
 * The on action scope is based on the script documentation, for more information see the `common/on_actions` directory
## Effects
| Type | Effect | Description |
|--|--|--|
| Added | `add_maneuvers` | Adds maneuvers to the target country's side in the scoped diplomatic play   |
| Added | `add_to_global_variable_map` | Adds the event target to a variable map for the given duration   |
| Added | `add_to_local_variable_map` | Adds the event target to a variable map for the given duration   |
| Added | `add_to_variable_map` | Adds the event target to a variable map for the given duration   |
| Added | `clear_global_variable_map` | Empties the map   |
| Added | `clear_local_variable_map` | Empties the map   |
| Added | `clear_variable_map` | Empties the map   |
| Added | `remove_from_global_variable_map` | Removes the target from a variable map   |
| Added | `remove_from_local_variable_map` | Removes the target from a variable map   |
| Added | `remove_from_variable_map` | Removes the target from a variable map   |
| Added | `set_movement_defeated` | Sets or clears the defeat date for the movement in scope   |
## Triggers
| Type | Trigger | Trait | Description |
|--|--|--|--|
| Added | `can_close_straits` | Boolean | Check if the scoped country is allowed to close the straits it controls   |
| Added | `can_toll_straits` | Boolean | Check if the scoped country is allowed to charge tolls on the straits it controls   |
| Added | `charges_strait_toll` | Boolean | Check if the scoped country controls a strait with a toll rate of Low or higher   |
| Added | `days_since_movement_defeated` | Value | Compares the number of days since a movement with this identity was last defeated in civil war. Returns max value if never defeated.   |
| Added | `days_since_movement_type_defeated` | Value | Compares the number of days since a movement of a given identity was last defeated in civil war. Returns max value if never defeated.   |
| Added | `global_variable_map_size` |  -  | Checks the size of a variable map   |
| Added | `has_global_variable_map` |  -  | Checks whether the current scope has the specified variable map   |
| Added | `has_local_variable_map` |  -  | Checks whether the current scope has the specified variable map   |
| Added | `has_military_strait_access_through` |  -  | Check if the scoped country has military access through every strait owned by the target country   |
| Added | `has_strait_toll_exemption_from` |  -  | Check if the scoped country is exempt from the strait tolls charged by the target country   |
| Added | `has_variable_map` |  -  | Checks whether the current scope has the specified variable map   |
| Added | `is_directed` | Boolean | Is the treaty article \[option\] directed, i.e. having a particular target and source country? |
| Added | `is_key_in_global_variable_map` |  -  | Checks if a target is a key in a variable list   |
| Added | `is_key_in_local_variable_map` |  -  | Checks if a target is a key in a variable list   |
| Added | `is_key_in_variable_map` |  -  | Checks if a target is a key in a variable list   |
| Added | `is_ship_obsolete_for` |  -  | Checks if the ship's type is obsolete for the target country.   |
| Added | `is_ship_very_obsolete_for` |  -  | Checks if the ship's type is very obsolete for the target country.   |
| Added | `is_value_in_global_variable_map` |  -  | Checks if a target is a value in a variable list   |
| Added | `is_value_in_local_variable_map` |  -  | Checks if a target is a value in a variable list   |
| Added | `is_value_in_variable_map` |  -  | Checks if a target is a value in a variable list   |
| Added | `local_variable_map_size` |  -  | Checks the size of a variable map   |
| Added | `variable_map_size` |  -  | Checks the size of a variable map   |
| Changed | `can_queue_building_levels` |  -  | Checks if the building's owner could queue the provided number of additional levels without hitting a level or resource potential cap   |
| Removed | `days_obsolete` | Value | Compare the number of days since a ship was first marked obsolete by the AI. Returns 0 if the ship has never been marked.   |
## Event Targets
| Type | Event Target | Description |
|--|--|--|
| Added | `num_assigned_supply_ships` | Get the number of assigned supply ships for a military formation |
| Added | `global_variable_map` | Reference a previous set variable via its name eg: "global_variable_map(average_relation_map\|c:FRA)" |
| Added | `local_variable_map` | Reference a previous set variable via its name eg: "local_variable_map(rewards_for_country\|c:FRA)" |
| Added | `variable_map` | Reference a variable set under a specified scope in a named container on this scope: "variable_map(our_relations_with\|c:FRA)" |
## Iterators
| Type | Iterator |
|--|--|
| Added | `{any\|every\|ordered\|random}_key_in_global_variable_map` |
| Added | `{any\|every\|ordered\|random}_key_in_local_variable_map` |
| Added | `{any\|every\|ordered\|random}_key_in_variable_map` |
## On Actions
| Type | On Action | Scope |
|--|--|--|
| Added | `on_commander_promoted` | `none` |

