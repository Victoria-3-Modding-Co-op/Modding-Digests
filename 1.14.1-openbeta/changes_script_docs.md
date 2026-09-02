# Script Documentation 1.14-openbeta
## Table of Contents
 * [Scopes](#scopes)
 * [Effects](#effects)
 * [Triggers](#triggers)
 * [On Actions](#on-actions)
## Notes
 * **Changed** means the description, scopes or anything related to the documentation for this element has changed
 * The list of iterators do **not** include generated geographic region based iterators
 * The on action scope is based on the script documentation, for more information see the `common/on_actions` directory
## Scopes
| Type    | Scope                          | Supports Variables | Supports Effects | Supports Triggers | Save Game Identifier           |
|---------|--------------------------------|--------------------|------------------|-------------------|--------------------------------|
| Removed | `travel_connection`            | True               | True             | True              | `travel_connection`            |
| Removed | `travel_connection_definition` | True               | True             | True              | `travel_connection_definition` |
| Removed | `travel_node`                  | True               | True             | True              | `travel_node`                  |
| Removed | `travel_node_definition`       | True               | True             | True              | `travel_node_definition`       |
## Effects
| Type    | Effect                   | Description                                                                                                                       |
|---------|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------|
| Added   | `add_war_support_change` | Adds war support change to the target country in the scoped war. The amount will appear under the 'situations' header in tooltips |
| Removed | `add_war_exhaustion`     | Adds war exhaustion to the target country in the scoped war. The amount will appear under the 'situations' header in tooltips     |
## Triggers
| Type    | Trigger                                  | Trait   | Description                                                                                                                                                   |
|---------|------------------------------------------|---------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Added   | `additional_war_support_change`          | Value   | Compares the additional war support change the scoped country has accumulated from scripted events in the target diplomatic play                              |
| Added   | `attitude_towards_overlord`              | -       | Checks a subject's AI attitude toward its overlord                                                                                                            |
| Added   | `average_devastation`                    | Value   | Compares the population-weighted average devastation of a country's states (0-1)                                                                              |
| Added   | `enemy_side_occupation`                  | Value   | Average weighted occupation of the countries on the enemy side of the scoped war, from the scoped country's perspective (0-1)                                 |
| Added   | `has_stalled_wargoal_against`            | -       | Checks if any enemy war goal in the scoped war targets the specified country without being contested or advanced on                                           |
| Added   | `has_stalled_wargoal_held_by`            | -       | Checks if the specified country holds a war goal in the scoped war that is neither being contested nor advanced on                                            |
| Added   | `has_sufficient_sailors`                 | Boolean | Check if the Naval Administrations can deliver enough sailors for every ship the country already has                                                          |
| Added   | `has_war_support_change`                 | Value   | Checks the war support change of the target country in the scoped war                                                                                         |
| Added   | `is_at_war_with_rival`                   | -       | Checks if the specified country is at war against a declared rival in the scoped war                                                                          |
| Added   | `num_significant_battles`                | Value   | Number of ended battles in the scoped war that had power projection on both sides                                                                             |
| Added   | `size_weighted_won_battles_fraction`     | Value   | Determines the fraction of battles the target country has won in the target war, weighted by manpower size of all battles in the war                          |
| Added   | `war_duration_months`                    | Value   | Number of months the scoped war has lasted                                                                                                                    |
| Added   | `war_goal_time_ramp`                     | Value   | How much of their full weight war-goal-driven war support factors currently carry, from zero early in the war to one once it is old                           |
| Added   | `war_support_from_acceptance_of_dead`    | Value   | Determines the war support change a country gets from their degree of cultural acceptance of manpower killed in the war, regardless of what side they were on |
| Added   | `war_support_from_war_goals`             | Value   | Signed war support change per beat for the scoped country from war goals it holds (positive) or is targeted by (negative), by progress tier                   |
| Added   | `weeks_until_bankruptcy`                 | Value   | Compares how many weeks the country can sustain its current deficit before its debt reaches its credit limit                                                  |
| Removed | `additional_war_exhaustion`              | Value   | Compares the additional war exhaustion the scoped country has accumulated from scripted events in the target diplomatic play                                  |
| Removed | `enemy_contested_wargoals`               | Value   | Determines the fraction of war goals that enemies in the war are currently contesting                                                                         |
| Removed | `has_war_exhaustion`                     | Value   | Checks the war exhaustion of the target country in the scoped war                                                                                             |
| Removed | `war_exhaustion_from_acceptance_of_dead` | Value   | Determines the war exhaustion a country gets from their degree of cultural acceptance of manpower killed in the war, regardless of what side they were on     |
## On Actions
| Type  | On Action                                 | Scope  |
|-------|-------------------------------------------|--------|
| Added | `on_diplo_play_subject_backstab_overlord` | `none` |

