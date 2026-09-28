# Script Documentation 1.14.4-openbeta
## Table of Contents
 * [Scopes](#scopes)
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
| Added | `ai_regional_objective` | True | True | True | `ai_regional_objective` |
| Added | `ai_strategic_region_stance_type` | True | True | True | `srs` |
| Added | `ai_regional_objective_type` | True | True | True | `aro` |

## Triggers
| Type | Trigger | Trait | Value Type | Description |
|--|--|--|--|--|
| Added | `completion_date` | Value |  -  | Compare to the date the scoped AI regional objective was completed   |
| Added | `gdp_change_since_war_start` | Value |  -  | Compares the fraction of GDP the target country has gained or lost since it entered the scoped war   |
| Added | `gdp_owned_by` | Value |  -  | Compares the yearly GDP the specified country owns in the scoped country   |
| Added | `has_any_potential_strait_province` | Boolean |  -  | Check if a state, state region or country owns any potential strait province   |
| Added | `has_any_regional_objective` |  -  |  -  | Checks if the scoped country's AI has a regional objective in a strategic region, completed or not   |
| Added | `has_coastal_access` | Boolean |  -  | Check if this state has a direct connection to a coastal state owned by the same country.   |
| Added | `has_regional_objective` |  -  |  -  | Checks if the scoped country's AI has an active regional objective in a strategic region   |
| Added | `is_ai_ship_category` |  -  |  -  | Checks if scoped ship is in the specified AI ship category   |
| Added | `is_completed` | Boolean |  -  | Checks if the scoped AI regional objective has been completed   |
| Added | `is_fighting_overlord_in_war` |  -  |  -  | Checks if the specified country is a subject fighting its own overlord in the scoped war   |
| Added | `is_land_adjacent_to_state` |  -  |  -  | Checks if country in scope shares a land border with a target state, ignoring sea crossings   |
| Added | `is_on_defending_side` |  -  |  -  | Checks if the target country is on the target side of the scoped war, as the target itself or backing it   |
| Added | `land_lost_since_war_start` | Value |  -  | Compares how much of what the target country's economy was worth on entering the scoped war has since been taken from it by war goal enforcement   |
| Added | `lowest_war_support_in_overlord_war` | Value |  -  | Compares the lowest war support the scoped country has in any war it fights on the same side as its overlord, or the maximum war support if it has no such war   |
| Added | `start_date` | Value |  -  | Compare to the date the scoped AI regional objective was rolled   |
| Added | `tax_income` | Value |  -  | Does the country have this amount of weekly income from taxation, excluding tariffs, pacts, transfers and other external sources   |
| Changed | `has_any_strait_control` | Boolean |  -  | Check if the scoped country owns a strait province with naval fortification   |
| Changed | `has_any_strait_province` | Boolean |  -  | Check if a state, state region or country owns any strait province   |
| Changed | `has_strategic_adjacency` |  -  |  -  | Checks if country in scope has a strategic adjacency (direct/coastal/military access/war goal adjacency) to target state/country   |
| Changed | `has_strategic_land_adjacency` |  -  |  -  | Checks if country in scope has a strategic adjacency (direct land border, military access or war goal adjacency only) to target state/country   |
| Changed | `is_coastal` | Boolean |  -  | Check if a state borders a (non-impassable) sea region or if a country contains any such state.   |
| Changed | `primary_cultures_percent_country` | Value |  -  | Checks that a country's population has a certain percentage of the target country's primary cultures   |
| Changed | `primary_cultures_percent_state` | Value |  -  | Checks that a state's population has a certain percentage of the target country's primary cultures   |

## Event Targets
| Type | Event Target | Description |
|--|--|--|
| Added | `secession_tag` | Scope to the country the scoped political movement would secede as, if any. |
| Added | `ai_regional_objective_type` | Scope to an AI regional objective type from its key (ai_regional_objective_type:ai_regional_objective_acquire_state) |
| Added | `ai_strategic_region_stance_type` | Scope to an AI regional stance type from its key (ai_strategic_region_stance_type:stance_conquer_region) |
| Added | `aro` | Scope to an AI regional objective type from its key (aro:ai_regional_objective_acquire_state) |
| Added | `srs` | Scope to an AI regional stance type from its key (srs:stance_conquer_region) |
| Added | `carrying_capacity` | Total naval carrying capacity of scope country, across all of its fleets. |
| Added | `relative_carrying_capacity` | Naval carrying capacity of scope country relative to its standing battalions. A value of 0.5 means it can transport half of them at once. Capped at 1, and returns 0 if the country has no battalions. |
| Added | `stance` | Scope to the AI regional stance an AI regional objective was rolled under |

## Iterators
| Type | Iterator |
|--|--|
| Added | `{any\|every\|ordered\|random}_releasable_state` |
| Added | `{any\|every\|ordered\|random}_scope_regional_objective` |
## On Actions
| Type | On Action | Scope |
|--|--|--|
| Added | `on_diplo_play_overlord_protects_subject` | `none` |

