# Script Documentation 1.14.5-openbeta
## Table of Contents
 * [Triggers](#triggers)
 * [Event Targets](#event-targets)
 * [On Actions](#on-actions)
## Notes
 * **Changed** means the description, scopes or anything related to the documentation for this element has changed
 * The list of iterators do **not** include generated geographic region based iterators
 * The on action scope is based on the script documentation, for more information see the `common/on_actions` directory

## Triggers
| Type | Trigger | Trait | Value Type | Description |
|--|--|--|--|--|
| Added | `conclusion_date` | Value |  -  | Compare to the date the scoped AI regional objective was concluded   |
| Added | `has_or_is_contesting_state_in_state_region` |  -  |  -  | Check if country has a state in the state region, or is at war with a country that holds one - i.e. the region has not been settled away from it   |
| Added | `has_war_goal_at_risk_of_being_dropped` |  -  |  -  | Checks if the target country holds a war goal in the scoped war that is at risk of being dropped for having been uncontested for too long   |
| Added | `is_active` | Boolean |  -  | Checks if the scoped AI regional objective is still being pursued, meaning it has neither completed nor failed   |
| Added | `is_failed` | Boolean |  -  | Checks if the scoped AI regional objective has failed or been invalidated   |
| Added | `is_independent_and_not_being_subjugated` | Boolean |  -  | True if the country is not a subject and no war goal to make it a subject is pending against it in any of its wars   |
| Added | `owns_entire_or_is_contesting_state_region` |  -  |  -  | Check if country owns the entire region, or is at war with a country that holds a state in it - i.e. the region has not been settled away from it   |
| Added | `owns_entire_state_region_uncontested` |  -  |  -  | Check if country owns the entire region and no war goal in any of its wars is targeting a state in it   |
| Added | `war_may_restore_country` |  -  |  -  | Checks if a war the scoped country is committed to has a war goal that would put the specified country back on the map, such as the mirror goal created when a country is annexed mid-war   |
| Changed | `has_any_regional_objective` |  -  |  -  | Checks if the scoped country's AI has a regional objective in a strategic region, whatever its status   |
| Removed | `completion_date` | Value |  -  | Compare to the date the scoped AI regional objective was completed   |

## Event Targets
| Type | Event Target | Description |
|--|--|--|
| Added | `strait_access_grievance_against` | Scope to how badly the strait closures and blocked warships of a target country hurt this country, as a percentage - its dependence on the worst restricted strait, scaled by how harsh the restriction is. 0 when the target closes nothing this country depends on. Refreshed weekly and when a strait setting takes effect (example: strait_access_grievance_against:root \>= 20) |
| Added | `strait_dependence_by` | Scope to how much this country depends on straits controlled by a target country, as a percentage - the larger of its trade dependence across all of them and its military dependence on the single worst one. Military dependence is refreshed weekly (example: strait_dependence_by:root \>= 10) |
| Added | `strait_toll_grievance_against` | Scope to how badly the strait tolls of a target country hurt this country, as a percentage - its dependence on the worst tolled strait, scaled by the toll rate. 0 when the target tolls nothing this country depends on, or also closes a strait or blocks warships this country depends on. Refreshed weekly and when a strait setting takes effect (example: strait_toll_grievance_against:root \>= 20) |
| Added | `strait_trade_dependence_by` | Scope to how much this country relies on its trade volume through straits controlled by a target country, as a percentage of total reliance. Counts imports and exports, so a pure exporter is included (example: strait_trade_dependence_by:root \>= 25) |
| Added | `worst_strait_access_grievance` | Scope to the largest strait_access_grievance_against this country holds against any strait controller (example: worst_strait_access_grievance \>= 20) |
| Added | `worst_strait_toll_grievance` | Scope to the largest strait_toll_grievance_against this country holds against any strait controller (example: worst_strait_toll_grievance \>= 20) |
| Added | `dependence_for` | Scope to how much a target country depends on this strait, as a percentage - whichever of trade_dependence_for and military_dependence_for is larger (example: dependence_for:root \>= 10) |
| Added | `fallout_for` | Scope to how many countries a target controller of this strait would hurt by closing it: like trade_fallout_for, but summing trade plus military dependence over every country that would lose passage, given the permissions that would apply once it is closed (example: fallout_for:root \>= 50) |
| Added | `military_dependence_for` | Scope to how much a target country would be cut off if this strait were closed to it, as a percentage - 100 if it would lose most of the sea it can reach, otherwise the worse of the GDP of its ports cut off from its home waters and the value of the regions its fleets operate in that it could no longer reach. 0 for a country without ports. Refreshed weekly (example: military_dependence_for:root \>= 25) |
| Added | `military_fallout_for` | Scope to how many countries a target controller of this strait would hurt by blocking warships: like trade_fallout_for, but summing military_dependence_for over every country that would lose passage, given the permissions that would apply once warships are blocked (example: military_fallout_for:root \>= 50) |
| Added | `only_allies_fallout_for` | Scope to how many countries a target controller of this strait would hurt by letting only its allies through its current restriction: like trade_fallout_for, but summing trade plus military dependence (closed) or military_dependence_for (warships blocked) over every country that would lose passage. 0 while the strait is open (example: only_allies_fallout_for:root \>= 50) |
| Added | `trade_dependence_for` | Scope to how much a target country relies on its trade volume through this strait, as a percentage of total reliance. Counts imports and exports (example: trade_dependence_for:root \>= 25) |
| Added | `trade_fallout_for` | Scope to how many countries a target controller of this strait would hurt by charging tolls: the sum of trade_dependence_for over every country not exempt from its tolls, not shut out by its current restriction, not its rival or diplomatic play enemy, and at or above the strait grievance dependence cutoff, each scaled down by its GDP relative to the controller. Multiply by the toll rate for the share of that trade the tolls would take. Refreshed weekly and when a strait setting takes effect (example: trade_fallout_for:root \>= 50) |
| Removed | `strait_trade_importance_by` | Scope to the trade importance of goods this country is trading through straits controlled by a target country. Accumulated value is multiplied by STRAIT_FULL_CONTROL_TRADE_IMPORTANCE_MULT for straits where the controller controls both sides (example: strait_trade_importance_by:root \>= 100) |

## On Actions
| Type | On Action | Scope |
|--|--|--|
| Added | `on_wargoal_enforced_by_timer` | `none` |
| Added | `on_lost_war` | `none` |
| Added | `on_won_war` | `none` |
| Added | `on_inconclusive_war` | `none` |

