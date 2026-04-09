# Script Documentation 1.13.0
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
| Added | `character_role` | True | True | True | `character_role` |
| Added | `interest_tier_type` | True | True | True | `interest_tier_type` |
| Added | `naval_battle` | True | True | True | `naval_battle` |
| Added | `naval_mission` | True | True | True | `naval_mission` |
| Added | `naval_mission_type` | True | True | True | `naval_mission_type` |
| Added | `ship` | True | True | True | `ship` |
| Added | `ship_group` | True | True | True | `ship_group` |
| Added | `ship_type` | True | True | True | `ship_type` |
| Added | `strait` | True | True | True | `strait` |
| Added | `strait_type` | True | True | True | `strait_type` |
| Removed | `canal_type` | True | True | True | `canal_type` |

## Effects
| Type | Effect | Description |
|--|--|--|
| Added | `add_career_length` | Adds to a character's current career length in a role. Role can be a specific database role or a role type (e.g. general). If no role is specified, applies to all roles with career end dates.   |
| Added | `add_cultural_taboo` | Adds a new taboo to the culture in scope   |
| Added | `add_involvement` | Adds involvement for the scoped country in the given strategic region   |
| Added | `add_resource_potential` | Add a building type as a resource potential to a state region   |
| Added | `add_supply_ships` | Adds number of supply ships to the scoped country   |
| Added | `change_resource_potential` | Change the potential max buildings of a resource in a state region. Only works for building types capped by resources.   |
| Added | `clear_ownership_transfer_fleet` | Clears the ownership transfer fleet in the scoped country, should be done after a series of set_ship_owner_multiple   |
| Added | `create_ship` | Creates a ship in a scoped country   |
| Added | `custom_label_no_bullet` | just a tooltip, the scope as object (for grouping, localization). No bullet point.   |
| Added | `custom_tooltip_no_bullet` | just a tooltip, the scope as subject (for grouping, localization). No bullet point.   |
| Added | `damage_ship_hull` | Damages a ship's hull by a given amount   |
| Added | `damage_ship_hull_percent` | Damages a ship's hull by a given percentage of its total health   |
| Added | `disable_temporary_hostilities` | Disable temporary hostilities of a given type between two countries   |
| Added | `enable_temporary_hostilities` | Enable temporary hostilities between two countries for a duration   |
| Added | `kill_crew` | Kills a given amount of a ship's crew   |
| Added | `kill_crew_percent` | Kills a given percentage of a ship's crew   |
| Added | `kill_ship` | Destroys the scoped ship   |
| Added | `remove_cultural_taboo` | Removes a taboo from the culture in scope   |
| Added | `remove_resource_potential` | Remove a building type from the resource potentials of a state region   |
| Added | `set_as_adult` | Turns the scoped character into an adult if they are not one already.   |
| Added | `set_as_flagship` | Assign/unassign the ship as a flagship for the country   |
| Added | `set_career_length` | Sets the career length from now for a character in a role. Role can be a specific database role or a role type (e.g. general). If no role is specified, applies to all roles with career end dates.   |
| Added | `set_first_name` | Changes the first name of a character to a loc key   |
| Added | `set_home_state` | Changes the home state of the scoped character   |
| Added | `set_is_noble` | Sets the noble flag of the scoped character.   |
| Added | `set_last_name` | Changes the last name of a character to a loc key   |
| Added | `set_name_format` | Sets the name format of a scoped culture   |
| Added | `set_ship_owner` | Set ship owner country   |
| Added | `set_ship_owner_multiple` | Set ship owner country, use when setting multiple ships in a row to put them in a single ownership transfer fleet, then use clear_ownership_transfer_fleet to clear it   |
| Added | `start_harvest_condition_with_params` | Start a harvest condition of type in scoped state region where intensity and duration(in days) are optionally provided   |
| Added | `unassign_from_formation` | Unassigns the scoped commander from their formation   |
| Changed | `add_character_role` | Adds a new role to a character, works with either archetype or database role   |
| Changed | `remove_character_role` | Removes an existing role from a character, works with either archetype or database role   |
| Changed | `withdraw` | Withdraws a country from a treaty   |
| Removed | `add_declared_interest` | Will create a declared interest in the target strategic region   |

## Triggers
| Type | Trigger | Trait | Description |
|--|--|--|--|
| Added | `armor` | Value | Compare a ship's armor   |
| Added | `country_ship_type_fraction` | Value | Checks that a country has a certain fraction of a specific ship type   |
| Added | `crew` | Value | Compare a ship's current crew   |
| Added | `crew_percent` | Value | Compare a ship's current crew   |
| Added | `formation_ship_type_fraction` | Value | Checks that a formation has a certain fraction of a specific ship type   |
| Added | `has_any_naval_only_hostilities` | Boolean | Check if the country has naval hostilities with any country it is not also at war with   |
| Added | `has_any_strait_control` |  -  | Check if the scoped country has any level of strait control   |
| Added | `has_any_strait_province` |  -  | Check if the scoped country has any strait   |
| Added | `has_naval_mission_with_invalid_area` | Boolean | Checks if a Fleet has a naval mission with an invalid area   |
| Added | `has_port_country` | Boolean | Check if scoped country has at least one port   |
| Added | `has_port_market` | Boolean | Check if scoped market has at least one port   |
| Added | `has_port_state` | Boolean | Check if scoped state has at least one port   |
| Added | `has_region_stance` |  -  | Checks if the scoped country's AI has the specified stance for a strategic region   |
| Added | `has_role_of_type` |  -  | Checks if character has a role of the specified archetype   |
| Added | `has_ship_outside_max_port_distance` | Boolean | Checks if a Fleet has any ship that is beyond its maximum distance to port   |
| Added | `has_strategic_region_interest_tier` | Value | Checks the scoped country's interest tier rank in a specific strategic region   |
| Added | `highest_overlapping_interest_tier` | Value | Compares the highest interest tier rank (scope country) among strategic regions where both countries have an interest.   |
| Added | `hit_points` | Value | Compare a ship's current hit points   |
| Added | `hit_points_percent` | Value | Compare a ship's current hit points   |
| Added | `invasion_has_marines` | Boolean | Checks if any combat unit in the scoped invasion's armies is a marine   |
| Added | `is_adult` | Boolean | Check if character is an adult   |
| Added | `is_auto_assigned` | Boolean | Checks if the character role is auto assigned   |
| Added | `is_being_bombarded` | Boolean | Checks if a state is currently being port bombarded by a hostile fleet   |
| Added | `is_character_role` |  -  | Checks if the scoped character role is a specific role   |
| Added | `is_character_role_type` |  -  | Checks if the scoped character role is of a specific archetype   |
| Added | `is_damaged` | Boolean | Checks if a ship is damaged   |
| Added | `is_doing_piracy_in_region` |  -  | Checks if a Fleet is doing piracy in the specified strategic region   |
| Added | `is_flagship` | Boolean | Checks if the scoped ship is assigned as the flagship   |
| Added | `is_heir_of_own_country` | Boolean | Checks whether the scoped character is the heir in the country they live in   |
| Added | `is_historical_treaty` | Boolean | Checks if the scoped treaty was signed before the game start date   |
| Added | `is_in_port` | Boolean | Checks if a ship is in port   |
| Added | `is_interest_group_leader` | Boolean | Checks if character is the leader of their interest group   |
| Added | `is_invalid_naval_mission_grace_period_active` | Boolean | Checks if a Fleet is in the grace period from having an invalid naval mission   |
| Added | `is_local_country` |  -  | Checks if the scoped country is local in specified strategic region   |
| Added | `is_naval_invasion` | Boolean | Checks if the scoped invasion is a naval invasion   |
| Added | `is_noble` | Boolean | Check if character is a noble   |
| Added | `is_ruler_of_any_country` | Boolean | Checks if character is a ruler/head of state of any country   |
| Added | `is_ruler_of_other_country` | Boolean | Checks if character is a ruler/head of state of a country they don't live in   |
| Added | `is_ruler_of_own_country` | Boolean | Checks if character is a ruler/head of state of the country they live in   |
| Added | `is_ship_type` |  -  | Checks if scoped ship is of the specified type   |
| Added | `lifetime_piracy_income` | Value | Compares the lifetime piracy income of a character   |
| Added | `loyalists` | Value | Compares the loyalty in a given state, i.e. the fraction of Loyalists   |
| Added | `military_ship_maintenance_fulfillment` | Value | Compares the military ship maintenance fulfillment ratio of a country   |
| Added | `political_strength_share` | Value | Checks the political strength share of a pop type, religion or culture in a country or state. Exactly one of pop_type, religion or culture must be specified.   |
| Added | `potential_income` | Value | Compare the potential income of the country (weekly income plus tax waste)   |
| Added | `power_projection_value` | Value | Compare a ship's power projection   |
| Added | `primary_role` |  -  | Checks if the character's primary role is the specified role   |
| Added | `prominence` | Value | Compares the character prominence   |
| Added | `region_score` | Value | Compares the aggregated AI strategy region score for the specified strategic region in country scope   |
| Added | `remaining_career_length` |  -  | Checks if the character's remaining career length meets a duration threshold. Role can be a specific database role, a role type, or omitted to use the role furthest from career end.   |
| Added | `role_priority` | Value | Compares the priority of the character role   |
| Added | `spawns_characters_to_pool` | Boolean | Checks if the character role spawns characters to the pool   |
| Added | `speed` | Value | Compare a ship's speed   |
| Added | `supply_ship_maintenance_fulfillment` | Value | Compares the supply ship maintenance fulfillment ratio of a country   |
| Added | `tax_waste` | Value | Compare the tax waste of the country   |
| Added | `was_coerced_with_naval_threat` | Boolean | Check if the scoped treaty was accepted through threatening naval hostilities   |
| Added | `wealth_share` | Value | Checks the wealth political strength share of a pop type, religion or culture in a country or state. Exactly one of pop_type, religion or culture must be specified.   |
| Changed | `has_role` |  -  | Checks if character has specific role   |
| Changed | `is_attacker_in_battle` | Boolean | Checks if a Commander or Ship is attacker in a battle   |
| Changed | `is_defender_in_battle` | Boolean | Checks if a Commander or Ship is defender in a battle   |
| Changed | `is_in_battle` | Boolean | Checks if a Commander or Ship is engaged in battle   |
| Changed | `loyalty` | Value | Compares the character loyalty   |
| Changed | `relative_authority` | Value | Compares the unused fraction of authority for the scoped country |
| Changed | `relative_bureaucracy` | Value | Compares the unused fraction of bureaucracy for the scoped country |
| Changed | `relative_influence` | Value | Compares the unused fraction of influence for the scoped country |
| Changed | `years_of_service` | Value | Compares the commander's years of service   |
| Removed | `can_have_declared_interest_here` |  -  | Check if the target country scope fulfills the rules for conditions for having a declared interest in the strategic region in scope. Does not check for availability of declared interests.   |
| Removed | `country_navy_unit_type_fraction` | Value | Checks that a country has a certain percentage of a specific navy unit type   |
| Removed | `formation_navy_unit_type_fraction` | Value | Checks that a formation has a certain percentage of a specific navy unit type   |
| Removed | `has_decreasing_interests` | Boolean | Checks if the country has decreasing interest levels |
| Removed | `has_port` | Boolean | Check if state has at least one port   |
| Removed | `is_heir` | Boolean | Checks whether the scoped character is an heir   |
| Removed | `is_interest_active` | Boolean | Is the interest marker active   |
| Removed | `is_ruler` | Boolean | Checks if character is a ruler/head of state of a country   |
| Removed | `max_num_declared_interests` | Value | Compares the maximum number of declared interests of scoped country   |
| Removed | `num_declared_interests` | Value | Compares the number of declared interests of scoped country   |

## Event Targets
| Type | Event Target | Description |
|--|--|--|
| Added | `num_active_ships` | Get the number of active ships for military formations in the province that are allied to the specified country |
| Added | `num_active_ships_in_battle` | Get the number of active ships in battle for military formations in the province that are allied to the specified country |
| Added | `num_active_ships_not_in_battle` | Get the number of active ships not in battle for military formations in the province that are allied to the specified country |
| Added | `num_non_destroyed_ships` | Get the number of non-destroyed ships for military formations in the province that are allied to the specified country |
| Added | `num_non_destroyed_ships_in_battle` | Get the number of non-destroyed ships in battle for military formations in the province that are allied to the specified country |
| Added | `num_non_destroyed_ships_not_in_battle` | Get the number of non-destroyed ships not in battle for military formations in the province that are allied to the specified country |
| Added | `num_ships` | Get the number of ships for military formations in the province that are allied to the specified country |
| Added | `num_ships_in_battle` | Get the number of ships in battle for military formations in the province that are allied to the specified country |
| Added | `num_ships_not_in_battle` | Get the number of ships not in battle for military formations in the province that are allied to the specified country |
| Added | `num_active_ships` | Get the number of active ships for a country, commander or military formation |
| Added | `num_active_ships_in_battle` | Get the number of active ships in battle for a country, commander or military formation |
| Added | `num_active_ships_not_in_battle` | Get the number of active ships not in battle for a country, commander or military formation |
| Added | `num_non_destroyed_ships` | Get the number of non-destroyed ships for a country, commander or military formation |
| Added | `num_non_destroyed_ships_in_battle` | Get the number of non-destroyed ships in battle for a country, commander or military formation |
| Added | `num_non_destroyed_ships_not_in_battle` | Get the number of non-destroyed ships not in battle for a country, commander or military formation |
| Added | `num_ships` | Get the number of ships for a country, commander or military formation |
| Added | `num_ships_in_battle` | Get the number of ships in battle for a country, commander or military formation |
| Added | `num_ships_not_in_battle` | Get the number of ships not in battle for a country, commander or military formation |
| Added | `commander` | Scope from a military formation to its commander character |
| Added | `detection` | Links from a fleet scope to the total detection of the ships in the fleet |
| Added | `screening` | Links from a fleet scope to the total screening of the ships in the fleet |
| Added | `visibility` | Links from a fleet scope to the total visibility of the ships in the fleet |
| Added | `vulnerability` | Links from a fleet scope to the total vulnerability of the ships in the fleet |
| Added | `ship_fleet` | Links from a ship scope to the ship fleet |
| Added | `ship_group` | Scope from a ship to its group |
| Added | `ship_group` | Scope to a ship group from its name (ship_group:ship_group_capital_ships) |
| Added | `ship_type` | Scope to a ship type from its name (ship_type:ship_type_frigate) |
| Added | `strait_type` | Scope to a strait type from its name (strait_type:key) |
| Added | `flagship` | Get the flagship of the scoped country |
| Added | `naval_combat_power` | Scope to the country's navy combat power (example: naval_combat_power \> 100) |
| Added | `naval_hostility_average_damage_dealt` | Scope to average damage dealt by this country in naval hostilities it initiated over the lookback period. Returns -1 if no hostilities found. |
| Added | `naval_hostility_damage` | Scope to damage points inflicted by this country against another in active naval hostilities (example: naval_hostility_damage:root \>= 50) |
| Added | `naval_vulnerability` | Scope to a country's naval vulnerability score based on trade reliance and coastal GDP share, capped at a define maximum |
| Added | `total_marine_capacity` | Get the total marine capacity across all fleets of a country |
| Added | `num_ships_of_group` | Number of ships of the provided ship group in the scoped country or military formation |
| Added | `input_ship` | Scope to the ship input in a treaty article |
| Added | `power_projection` | Get the power projection value of the scoped formation, unit, or ship |
| Removed | `highest_ranked_commander` | Scope from a military formation to its highest ranking commander character |
| Removed | `num_active_declared_interests` | Scope to the number of active declared interests a country has |
| Removed | `num_convoys_available` | Get the scoped country's current number of available convoys |
| Removed | `num_convoys_required` | Get the scoped country's current number of required convoys |
| Removed | `num_declared_interests` | Scope to the number of declared interests a country has (including inactive) |

## Iterators
| Type | Iterator |
|--|--|
| Added | `{any\|every\|ordered\|random}_character_role` |
| Added | `{any\|every\|ordered\|random}_country_strategic_region` |
| Added | `{any\|every\|ordered\|random}_owned_country` |
| Added | `{any\|every\|ordered\|random}_scope_army` |
| Added | `{any\|every\|ordered\|random}_scope_fleet` |
| Added | `{any\|every\|ordered\|random}_scope_homeland_state` |
| Added | `{any\|every\|ordered\|random}_scope_ship` |
| Added | `{any\|every\|ordered\|random}_scope_strait` |
| Added | `{any\|every\|ordered\|random}_strategic_region` |
## On Actions
| Type | On Action | Scope |
|--|--|--|
| Added | `on_ship_constructed` | `none` |
| Added | `on_naval_battle_started` | `none` |
| Added | `on_our_supply_ship_raiders_intercepted` | `none` |
| Added | `on_fleet_destroyed` | `none` |
| Added | `on_enemy_supply_ships_raided` | `none` |
| Added | `on_character_became_adult` | `none` |
| Added | `on_enemy_supply_ship_raiders_intercepted` | `none` |
| Added | `on_invasion_succeeded` | `none` |
| Added | `on_flagship_battle_lost` | `none` |
| Added | `on_our_supply_ships_raided` | `none` |
| Added | `on_flagship_destroyed` | `none` |
| Added | `on_strait_access_setting_changed` | `none` |
| Added | `on_naval_battle_lost` | `none` |
| Added | `on_flagship_battle_won` | `none` |
| Added | `on_naval_battle_won` | `country` |
| Added | `on_travel_deploy_to_state_cancelled` | `none` |
| Added | `on_naval_battle_ended` | `none` |
| Added | `on_character_spawned_in_pool` | `none` |
| Removed | `on_memento_mori` | `none` |
| Removed | `on_our_convoys_raided` | `none` |
| Removed | `on_enemy_convoys_raided` | `none` |

