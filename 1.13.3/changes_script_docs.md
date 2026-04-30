# Script Documentation 1.13.3
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
| Added | `ship_modification_type` | True | True | True | `ship_modification_type` |
| Added | `strait_type` | True | True | True | `strait_type` |

## Effects
| Type | Effect | Description |
|--|--|--|
| Added | `replace_character_roles` | Replaces existing role(s) from a character with another, works with either archetype or database role   |
| Added | `retire_character_if_should_be_culled` | Conditionally retire a character if it should be culled   |
| Changed | `retire_character` | Retire a character   |
| Changed | `withdraw` | Withdraws a country from a treaty   |

## Triggers
| Type | Trigger | Trait | Description |
|--|--|--|--|
| Added | `ai_ship_value` | Value | AI valuation of a ship in £, equal to the current template-version construction cost times NAI::SHIP_TRANSFER_BASE_VALUE_PER_CONSTRUCTION_POINT   |
| Added | `days_obsolete` | Value | Compare the number of days since a ship was first marked obsolete by the AI. Returns 0 if the ship has never been marked.   |
| Added | `has_ship_outside_max_port_distance` | Boolean | Checks if a Fleet has any ship that is beyond its maximum distance to port   |
| Added | `invasion_has_marines` | Boolean | Checks if any combat unit in the scoped invasion's armies is a marine   |
| Added | `is_being_bombarded` | Boolean | Checks if a state is currently being port bombarded by a hostile fleet   |
| Added | `is_doing_piracy_in_region` |  -  | Checks if a Fleet is doing piracy in the specified strategic region   |
| Added | `is_naval_invasion` | Boolean | Checks if the scoped invasion is a naval invasion   |
| Added | `lifetime_piracy_income` | Value | Compares the lifetime piracy income of a character   |
| Added | `ship_modification_market_demand_ratio` | Value | Goods-weighted buy/sell ratio for the construction goods of the target ship modification, evaluated against the country-scope's market.   |
| Added | `was_coerced_with_naval_threat` | Boolean | Check if the scoped treaty was accepted through threatening naval hostilities   |
| Removed | `broken_chain_of_command_penalty` | Value | Compares the broken chain of command penalty multiplier of a country   |

## Event Targets
| Type | Event Target | Description |
|--|--|--|
| Added | `total_pirated_trade_value` | Scope to the total average weekly base value of goods pilfered via piracy between two countries in a diplomatic relations scope (example: total_pirated_trade_value \>= 100) |
| Added | `strait_type` | Scope to a strait type from its name (strait_type:key) |
| Added | `diplomatic_pact_expense_ratio` | Scope to the ratio of diplomatic pact expenses to income for this country, clamped 0-1 (example: value = diplomatic_pact_expense_ratio) |
| Added | `naval_combat_power` | Scope to the country's navy combat power (example: naval_combat_power \> 100) |
| Added | `naval_hostility_average_damage_dealt` | Scope to average damage dealt by this country in naval hostilities it initiated over the lookback period. Returns -1 if no hostilities found. |
| Added | `naval_hostility_damage` | Scope to damage points inflicted by this country against another in active naval hostilities (example: naval_hostility_damage:root \>= 50) |
| Added | `naval_vulnerability` | Scope to a country's naval vulnerability score based on trade reliance and coastal GDP share, capped at a define maximum |
| Added | `pirated_trade_value_by` | Scope to the average weekly base value of goods pilfered from this country by a target country (example: pirated_trade_value_by:root \>= 50) |
| Added | `strait_trade_importance_by` | Scope to the trade importance of goods this country is trading through straits controlled by a target country. Accumulated value is multiplied by STRAIT_FULL_CONTROL_TRADE_IMPORTANCE_MULT for straits where the controller controls both sides (example: strait_trade_importance_by:root \>= 100) |
| Added | `total_crew_needed` | Get the total crew needed by all ships of a country |
| Added | `total_marine_capacity` | Get the total marine capacity across all fleets of a country |

## Iterators
| Type | Iterator |
|--|--|
| Added | `{any\|every\|ordered\|random}_scope_strait` |
## On Actions
| Type | On Action | Scope |
|--|--|--|
| Added | `on_ship_constructed` | `none` |
| Added | `on_our_supply_ship_raiders_intercepted` | `none` |
| Added | `on_enemy_supply_ships_raided` | `none` |
| Added | `on_enemy_supply_ship_raiders_intercepted` | `none` |
| Added | `on_invasion_succeeded` | `none` |
| Added | `on_our_supply_ships_raided` | `none` |
| Removed | `on_our_convoys_raided` | `none` |
| Removed | `on_enemy_convoys_raided` | `none` |

