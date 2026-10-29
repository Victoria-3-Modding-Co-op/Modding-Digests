# Script Documentation 1.15.0
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
| Added | `ai_regional_objective` | True | True | True | `ai_regional_objective` |
| Added | `ai_strategic_region_stance_type` | True | True | True | `srs` |
| Added | `ai_regional_objective_type` | True | True | True | `aro` |
| Removed | `travel_connection` | True | True | True | `travel_connection` |
| Removed | `travel_connection_definition` | True | True | True | `travel_connection_definition` |
| Removed | `travel_node` | True | True | True | `travel_node` |
| Removed | `travel_node_definition` | True | True | True | `travel_node_definition` |

## Effects
| Type | Effect | Value Type | Description |
|--|--|--|--|
| Added | `add_decree` | common/decrees/ | Adds the decree to the scoped state, or to every state of the scoped country, enacted by the state owner   |
| Added | `add_power_bloc_mandate` |  -  | Adds free mandates to the Power Bloc in scope, capped by MAX_MANDATES   |
| Added | `add_war_support_change` |  -  | Adds war support change to the target country in the scoped war. The amount will appear under the 'situations' header in tooltips   |
| Added | `change_power_bloc_name` |  -  | Changes the name of the power bloc in scope to a localization key   |
| Added | `destroy_power_bloc` |  -  | Dissolves the power bloc in scope and removes all of its members   |
| Added | `enact_law` | common/laws | Activates a law for a country as a successful enactment, with on_enact, movement loyalists and interest group approval |
| Added | `establish_cossack_host` |  -  | Establishes a cossack host in the scoped state   |
| Added | `leave_plays_supporting` |  -  | Makes the scoped country leave every diplomatic play and war where it supports the target country, unless the scoped country is a primary participant   |
| Added | `leave_power_bloc` |  -  | Scoped country leaves its power bloc   |
| Added | `play_music_cue` |  -  | Plays the specified music track for the player, interrupting the current one |
| Added | `remove_cossack_host` |  -  | Removes the cossack host from the scoped state   |
| Added | `remove_decree` | common/decrees/ | Removes the decree from the scoped state, or from every state of the scoped country   |
| Added | `replace_decree` |  -  | Replaces the from decree with the to decree in the scoped state, or in every state of the scoped country, keeping the original enactor   |
| Added | `send_interface_message` |  -  | Runs the contained effects in the current scope and shows the player a message   |
| Changed | `activate_law` | common/laws | Activates a law for a country |
| Changed | `add_banned_goods` | common/goods | Adds a total ban of a good to a country   |
| Changed | `add_character_ideology` | common/ideologies | Adds a character ideology to the scoped political movement   |
| Changed | `add_character_role` | common/character_roles | Adds a new role to a character, works with either archetype or database role   |
| Changed | `add_company` | common/company_types | Adds company type to a country's companies   |
| Changed | `add_company_monopoly` | common/buildings | Adds a monopoly to a company scope: add_company_monopoly = bt:building_textile_mills |
| Changed | `add_contextless_journal_entry` | common/journal_entries | Activates a contextless journal entry of the given type   |
| Changed | `add_country_monopoly` | common/buildings | Adds a monopoly to a country scope: add_country_monopoly = bt:building_textile_mills |
| Changed | `add_cultural_obsession` | common/goods | Adds a new obsession to the culture in scope   |
| Changed | `add_cultural_taboo` | common/goods | Adds a new taboo to the culture in scope   |
| Changed | `add_era_researched` | common/technology/eras | Add specified era as researched in a country scope   |
| Changed | `add_ideology` | common/ideologies | Adds an ideology to scoped interest group   |
| Changed | `add_principle` | common/power_bloc_principles | Adds principle to powerbloc   |
| Changed | `add_resource_potential` | common/buildings | Add a building type as a resource potential to a state region   |
| Changed | `add_taxed_goods` | common/goods | Adds consumption taxes on a good to a country   |
| Changed | `add_technology_researched` | common/technology/technologies | Research the specified technology in a country scope   |
| Changed | `add_tradition_trait` | common/discrimination_traits | Adds a new tradition trait to the culture in scope   |
| Changed | `add_trait` | common/character_traits | Add a trait to a Character   |
| Changed | `change_character_religion` | common/religions | Changes the religion of the scoped character   |
| Changed | `change_poptype` | common/pop_types | Changes the type of the pop to the given type |
| Changed | `change_subject_type` | common/subject_types | Changes the subject type of the country in scope while retaining the current Liberty Desire value.   |
| Changed | `change_tag` | common/country_definitions | Change the tag for the scoped country   |
| Changed | `complete_objective_subgoal` | common/objective_subgoals | Completes an objective subgoal   |
| Changed | `create_dynamic_country` |  -  | Creates a new country with a dynamic tag   |
| Changed | `create_ship` |  -  | Creates a ship in a scoped country   |
| Changed | `deactivate_law` | common/laws | Deactivates a law for a country |
| Changed | `exile_character` |  -  | Exile a character to the exile pool   |
| Changed | `finish_harvest_condition` | common/harvest_condition_types | Finish a harvest condition of type in the scoped state region   |
| Changed | `force_resource_depletion` | common/buildings | Forces a resource depletion in state   |
| Changed | `force_resource_discovery` | common/buildings | Forces a resource discovery in state   |
| Changed | `post_notification` | common/messages | Posts notification |
| Changed | `post_proposal` | common/proposal_types | Posts proposal |
| Changed | `remove_active_objective_subgoal` | common/objective_subgoals | Removes an active objective subgoal   |
| Changed | `remove_banned_goods` | common/goods | Removes a total ban of a good from a country   |
| Changed | `remove_building` | common/buildings | Remove a building in the scope state   |
| Changed | `remove_character_ideology` | common/ideologies | Removes a character ideology from the scoped political movement   |
| Changed | `remove_character_role` | common/character_roles | Removes an existing role from a character, works with either archetype or database role   |
| Changed | `remove_company` | common/company_types | Removes company type from a country's companies   |
| Changed | `remove_cultural_obsession` | common/goods | Removes a new obsession to the culture in scope   |
| Changed | `remove_cultural_taboo` | common/goods | Removes a taboo from the culture in scope   |
| Changed | `remove_enactment_modifier` | common/static_modifiers | Removes an enactment-related timed modifier effect to object in scope |
| Changed | `remove_ideology` | common/ideologies | Removes an ideology from scoped interest group   |
| Changed | `remove_modifier` | common/static_modifiers | Removes a timed modifier effect to object in scope |
| Changed | `remove_monopoly` | common/buildings | removes a monopoly in a country scope for a specific building: remove_monopoly = bt:building_textile_mills |
| Changed | `remove_principle` | common/power_bloc_principles | Removes principle from powerbloc   |
| Changed | `remove_resource_potential` | common/buildings | Remove a building type from the resource potentials of a state region   |
| Changed | `remove_taxed_goods` | common/goods | Removes consumption taxes on a good from a country   |
| Changed | `remove_tradition_trait` | common/discrimination_traits | Removes an existing tradition trait from the culture in scope   |
| Changed | `remove_trait` | common/character_traits | Remove a trait from a Character   |
| Changed | `set_available_for_autonomous_investment` | common/buildings | Sets a building type as available for autonomous investment in the current scoped State   |
| Changed | `set_capital` | map_data/state_regions | Set capital state in a country scope   |
| Changed | `set_core_ideology` | common/ideologies | Sets the core ideology of a political movement   |
| Changed | `set_country_type` | common/country_types | Sets the type of country for a country, for history |
| Changed | `set_home_country_definition` | common/country_definitions | Set a character's home country directly to a tag, you can use this to avoid making sure that the tag exists, this makes them an exile   |
| Changed | `set_ideology` | common/ideologies | Changes scoped character's ideology   |
| Changed | `set_ig_trait` | common/interest_group_traits | Adds a trait to the Interest Group, or replaces their current trait with the same approval level   |
| Changed | `set_market_capital` | map_data/state_regions | Set market capital in a country scope   |
| Changed | `set_social_hierarchy` | common/social_hierarchies | Sets the social hierarchy the scoped country   |
| Changed | `set_state_religion` | common/religions | Changes the state religion of the country to the specified religion   |
| Changed | `set_strategy` | common/ai_strategies | Set AI strategy for scope country   |
| Changed | `start_building_construction` | common/buildings | Start constructing a building in a scoped state as a government construction   |
| Changed | `start_enactment` | common/laws | Starts enacting the specified law type for the country in scope   |
| Changed | `start_harvest_condition` | common/harvest_condition_types | Start a harvest condition of type (or refresh it if already exists) in the scoped state region   |
| Changed | `start_privately_funded_building_construction` | common/buildings | Start constructing a building in a scoped state as a private construction   |
| Changed | `unset_available_for_autonomous_investment` | common/buildings | Sets a building type as unavailable for autonomous investment in the current scoped State   |
| Removed | `add_war_exhaustion` |  -  | Adds war exhaustion to the target country in the scoped war. The amount will appear under the 'situations' header in tooltips   |

## Triggers
| Type | Trigger | Trait | Value Type | Description |
|--|--|--|--|--|
| Added | `additional_war_support_change` | Value |  -  | Compares the additional war support change the scoped country has accumulated from scripted events in the target diplomatic play   |
| Added | `attitude_towards_overlord` |  -  |  -  | Checks a subject's AI attitude toward its overlord   |
| Added | `average_devastation` | Value |  -  | Compares the population-weighted average devastation of a country's states (0-1)   |
| Added | `blockaded_gdp_share` | Value |  -  | Compares the share of the target country's GDP that sits in blockaded states, from the scoped war   |
| Added | `can_start_play_against_overlord` | Boolean |  -  | Checks if a subject can start a diplomatic play against its direct overlord, even while the overlord is at war: no war the overlord is in has a war goal targeting the subject, and none of the subject's states are occupied   |
| Added | `cold_effect` | Value |  -  | How much the scoped state is currently suffering from the cold, from 0 to 1   |
| Added | `conclusion_date` | Value |  -  | Compare to the date the scoped AI regional objective was concluded   |
| Added | `connects_important_war_theaters` |  -  |  -  | Checks if pulling the target country into the scoped war would connect an important land theater of one side to an important land theater of the other, at least one of them not yet connected by land to the other side. A theater is important when it holds at least NDiplomacy\|VIOLATE_SOVEREIGNTY_IMPORTANT_THEATER_UNIT_SHARE of the mobilizing and mobilized units in the war   |
| Added | `country_or_subject_owns_entire_state_region_uncontested` | Type Key | map_data/state_regions | Check whether the scoped country or any of its subjects owns the entire region and no war goal in any of its wars is targeting a state in it   |
| Added | `current_career_length` |  -  |  -  | Checks if the character's current career length meets a duration threshold. Role can be a specific database role, a role type, or omitted to use the role with the longest tenure.   |
| Added | `enemy_pressure` | Value |  -  | Compares how actively the target country's enemies in the scoped war are pressuring it, from 0 to 1, through occupation, blockade or recent significant battles   |
| Added | `enemy_side_occupation` | Value |  -  | Average weighted occupation of the countries on the enemy side of the scoped war, from the scoped country's perspective (0-1)   |
| Added | `gdp_change_since_war_start` | Value |  -  | Compares the fraction of GDP the target country has gained or lost since it entered the scoped war   |
| Added | `gdp_owned_by` | Value |  -  | Compares the yearly GDP the specified country owns in the scoped country   |
| Added | `has_any_potential_strait_province` | Boolean |  -  | Check if a state, state region or country owns any potential strait province   |
| Added | `has_any_regional_objective` |  -  |  -  | Checks if the scoped country's AI has a regional objective in a strategic region, whatever its status   |
| Added | `has_building_levels_in_state_region` | Value |  -  | Checks how many levels of a building type the scoped country has in the state it owns in a state region   |
| Added | `has_coastal_access` | Boolean |  -  | Check if this state has a direct connection to a coastal state owned by the same country.   |
| Added | `has_military_reach` |  -  |  -  | Checks if the country in scope can realistically get an army to a target state or country. Always true with a land route; otherwise military_reach must be at least min_reach, and when min_shippable_strength is set, shippable_army_strength_against the target (or the target state's owner) must be at least that   |
| Added | `has_naval_mission_in_region` |  -  |  -  | Checks if a Fleet is running a specific naval mission covering the specified strategic region   |
| Added | `has_or_is_contesting_state_in_state_region` | Type Key | map_data/state_regions | Check if country has a state in the state region, or is at war with a country that holds one - i.e. the region has not been settled away from it   |
| Added | `has_planned_withdrawal` | Boolean |  -  | Checks if a participant is planning on withdrawing from the scoped treaty   |
| Added | `has_recently_removed_cossack_host` | Boolean |  -  | Check if a Cossack Host was removed from the state recently enough to still count   |
| Added | `has_regional_exile_pool_access` |  -  |  -  | Checks whether the scoped country meets the has_access requirements of the given Regional Exile Pool   |
| Added | `has_regional_objective` |  -  |  -  | Checks if the scoped country's AI has an active regional objective in a strategic region   |
| Added | `has_stalled_state_wargoal_against` |  -  |  -  | Checks if any enemy war goal in the scoped war would take whole states from the specified country without being contested or advanced on   |
| Added | `has_stalled_wargoal_against` |  -  |  -  | Checks if any enemy war goal in the scoped war targets the specified country without being contested or advanced on   |
| Added | `has_stalled_wargoal_held_by` |  -  |  -  | Checks if the specified country holds a war goal in the scoped war that is neither being contested nor advanced on   |
| Added | `has_state_in_state_region_uncontested` | Type Key | map_data/state_regions | Check if country has a state in the state region and no war goal in any of its wars is targeting a state in it   |
| Added | `has_sufficient_sailors` | Boolean |  -  | Check if the Naval Administrations can deliver enough sailors for every ship the country already has   |
| Added | `has_war_support_change` | Value |  -  | Checks the war support change of the target country in the scoped war   |
| Added | `in_north_hemisphere` | Boolean |  -  | Checks if the scoped state's state region has its center point north of the equator   |
| Added | `in_south_hemisphere` | Boolean |  -  | Checks if the scoped state's state region has its center point south of the equator   |
| Added | `in_tropics` | Boolean |  -  | Checks if the scoped state's state region has its center point between the tropics of Cancer and Capricorn   |
| Added | `is_active` | Boolean |  -  | Checks if the scoped AI regional objective is still being pursued, meaning it has neither completed nor failed   |
| Added | `is_ai_ship_category` | Type Key | common/ai_ship_categories | Checks if scoped ship is in the specified AI ship category   |
| Added | `is_at_war_with_rival` |  -  |  -  | Checks if the specified country is at war against a declared rival in the scoped war   |
| Added | `is_completed` | Boolean |  -  | Checks if the scoped AI regional objective has been completed   |
| Added | `is_culture_seceding_elsewhere` | Boolean |  -  | Its \[concept_culture\] has a growing or ongoing \[concept_secession\] in another \[concept_country\] |
| Added | `is_failed` | Boolean |  -  | Checks if the scoped AI regional objective has failed or been invalidated   |
| Added | `is_fighting_overlord_in_war` |  -  |  -  | Checks if the specified country is a subject fighting its own overlord in the scoped war   |
| Added | `is_in_regional_exile_pool` |  -  |  -  | Checks whether the scoped character is in a Regional Exile Pool   |
| Added | `is_independent_and_not_being_subjugated` | Boolean |  -  | True if the country is not a subject and no war goal to make it a subject is pending against it in any of its wars   |
| Added | `is_interest_group_pool_full` | Type Key | common/character_roles | Checks if the character's interest group already has as many pool characters of the role as it would spawn, using the country rank pool multiplier for AI countries   |
| Added | `is_land_adjacent_to_state` |  -  |  -  | Checks if country in scope shares a land border with a target state, ignoring sea crossings   |
| Added | `is_on_defending_side` |  -  |  -  | Checks if the target country is on the target side of the scoped war, as the target itself or backing it   |
| Added | `is_regional_objective_target_country` |  -  |  -  | Checks if the scoped country's AI has an active regional objective of the given type that targets the country   |
| Added | `is_regional_objective_target_state` |  -  |  -  | Checks if the scoped country's AI has an active regional objective of the given type that targets the state   |
| Added | `is_subject_of_and_not_being_freed` |  -  |  -  | True if the country is a subject and no war goal to free it is pending in any wars   |
| Added | `land_lost_since_war_start` | Value |  -  | Compares how much of what the target country's economy was worth on entering the scoped war has since been taken from it by war goal enforcement   |
| Added | `lowest_war_support_in_overlord_war` | Value |  -  | Compares the lowest war support the scoped country has in any war it fights on the same side as its overlord, or the maximum war support if it has no such war   |
| Added | `num_building_assets_of_group` | Value |  -  | Checks the number of building levels of a given building group the scoped building own.    |
| Added | `num_building_assets_of_type` | Value |  -  | Checks the number of building levels of a given type the scoped building own.    |
| Added | `num_significant_battles` | Value |  -  | Number of ended battles in the scoped war that had power projection on both sides   |
| Added | `owns_entire_or_is_contesting_state_region` | Type Key | map_data/state_regions | Check if country owns the entire region, or is at war with a country that holds a state in it - i.e. the region has not been settled away from it   |
| Added | `owns_entire_state_region_uncontested` | Type Key | map_data/state_regions | Check if country owns the entire region and no war goal in any of its wars is targeting a state in it   |
| Added | `size_weighted_won_battles_fraction` | Value |  -  | Determines the fraction of battles the target country has won in the target war, weighted by manpower size of all battles in the war   |
| Added | `start_date` | Value |  -  | Compare to the date the scoped AI regional objective was rolled   |
| Added | `tax_income` | Value |  -  | Does the country have this amount of weekly income from taxation, excluding tariffs, pacts, transfers and other external sources   |
| Added | `war_duration_months` | Value |  -  | Number of months the scoped war has lasted   |
| Added | `war_goal_time_ramp` | Value |  -  | How much of their full weight war-goal-driven war support factors currently carry, from zero early in the war to one once it is old   |
| Added | `war_is_in_stalemate` | Boolean |  -  | True if both war leaders are at minimum war support and the war is counting down to a stalemate   |
| Added | `war_may_restore_country` | Type Key | common/country_definitions | Checks if a war the scoped country is committed to has a war goal that would put the specified country back on the map, such as the mirror goal created when a country is annexed mid-war   |
| Added | `war_support_from_acceptance_of_dead` | Value |  -  | Determines the war support change a country gets from their degree of cultural acceptance of manpower killed in the war, regardless of what side they were on   |
| Added | `war_support_from_war_goals` | Value |  -  | Signed war support change per beat for the scoped country from war goals it holds (positive) or is targeted by (negative), by progress tier   |
| Added | `weeks_until_bankruptcy` | Value |  -  | Compares how many weeks the country can sustain its current deficit before its debt reaches its credit limit   |
| Changed | `can_construct_building` | Type Key | common/buildings | Checks if 1 level of \<building_type\> can be constructed in a scoped state   |
| Changed | `can_form_nation` | Type Key | common/country_formation | Check if the target country is able to potentially form a nation   |
| Changed | `can_research` | Type Key | common/technology/technologies | True if a country can research an technology   |
| Changed | `can_start_tutorial_lesson` | Type Key | common/tutorial_lessons | Can the specified tutorial lesson be started?   |
| Changed | `company_has_building_type_monopoly` | Type Key | common/buildings | Check if the scoped company has a monopoly of the specified building type   |
| Changed | `country_has_building_type_monopoly` | Type Key | common/buildings | Check if the scoped country has a monopoly of the specified building type   |
| Changed | `country_has_state_religion` | Type Key | common/religions | Checks if a religion is the state religion in the country   |
| Changed | `country_or_subject_owns_entire_state_region` | Type Key | map_data/state_regions | Check whether the scoped country or any of its subjects owns the entire specified state region   |
| Changed | `has_active_building` | Type Key | common/buildings | True if a state has an active building type   |
| Changed | `has_amendment` | Type Key | common/amendments | Check if scoped law has an amendment of the given type   |
| Changed | `has_any_strait_control` | Boolean |  -  | Check if the scoped country owns a strait province with naval fortification   |
| Changed | `has_any_strait_province` | Boolean |  -  | Check if a state, state region or country owns any strait province   |
| Changed | `has_any_subventions_on` | Type Key | common/goods | Check if the scoped country has any level of subventions on a goods   |
| Changed | `has_any_tariffs_on` | Type Key | common/goods | Check if the scoped country has any level of tariffs on a goods   |
| Changed | `has_battle_condition` | Type Key | common/battle_conditions | True if the battle side currently has a condition with the given key   |
| Changed | `has_building` | Type Key | common/buildings | True if a state/market/state region/country has a building type   |
| Changed | `has_civil_war_from_movement_type` | Type Key | common/political_movements | Checks if a country is having a civil war started by a particular movement type   |
| Changed | `has_commander_order` | Type Key | common/commander_orders | Checks whether the scoped character is following the given order   |
| Changed | `has_company` | Type Key | common/company_types | Checks if a company of the specified type exists in scope country   |
| Changed | `has_consumption_tax` | Type Key | common/goods | Checks if the country is taxing the target good.   |
| Changed | `has_cultural_obsession` | Type Key | common/goods | Checks if a culture has a certain goods as obsession   |
| Changed | `has_culture_graphics` | Type Key | common/culture_graphics | Checks if a culture has a certain culture_graphics   |
| Changed | `has_decree` | Type Key | common/decrees/ | Checks if scope state has a particular type of decree   |
| Changed | `has_discrimination_trait` | Type Key | common/discrimination_traits | Checks if scoped culture or religion has the given discrimination trait   |
| Changed | `has_discrimination_trait_group` | Type Key | common/discrimination_trait_groups | Checks if scoped culture or religion has the given discrimination trait group   |
| Changed | `has_government_type` | Type Key | common/government_types | Is the country's government type as specified   |
| Changed | `has_harvest_condition` | Type Key | common/harvest_condition_types | Check if the scoped state region has a harvest condition of type   |
| Changed | `has_identity` | Type Key | common/power_bloc_identities | Checks if the scoped power bloc has certain central identity   |
| Changed | `has_inactive_journal_entry` | Type Key | common/journal_entries | Check if the country has at least one inactive journal entry of the specified type   |
| Changed | `has_journal_entry` | Type Key | common/journal_entries | Check if the country has at least one active journal entry of the specified type   |
| Changed | `has_label` | Type Key | common/labels | Check if the scope object has the specified label   |
| Changed | `has_law` | Type Key | common/laws | Checks if a country has a certain law active |
| Changed | `has_law_commitment` | Type Key | common/laws | Checks if a country has a commitment to enact a certain law |
| Changed | `has_law_or_variant` | Type Key | common/laws | Checks if a country has a certain law or one its variant laws active |
| Changed | `has_map_interaction` | Type Key | common/map_interaction_types | Checks if the map interaction type is active   |
| Changed | `has_map_interaction_diplomatic_action` | Type Key | common/diplomatic_actions | Checks if our current map interaction is a specific diplomatic action   |
| Changed | `has_mobilization_option` | Type Key | common/mobilization_options | Checks that a formation has a specific mobilization option   |
| Changed | `has_modifier` | Type Key | common/static_modifiers | Check if a supported scope has a certain timed modifier   |
| Changed | `has_objective` | Type Key | common/objectives | Checks if the scoped country has a certain objective type   |
| Changed | `has_pop_culture` | Type Key | common/cultures | Checks if pop has specific culture   |
| Changed | `has_pop_religion` | Type Key | common/religions | Checks if pop has specific religion   |
| Changed | `has_potential_resource` | Type Key | common/buildings | Checks if the specificed building group is allowed in the scoped state. Used to check if a state can potentially produce a resource   |
| Changed | `has_potential_to_form_country` | Type Key | common/country_formation | Check if the target country could ever be able to form a nation   |
| Changed | `has_religion` | Type Key | common/religions | Checks characters religion   |
| Changed | `has_religious_taboo` | Type Key | common/goods | Checks if a religion has a certain goods as taboo   |
| Changed | `has_role` | Type Key | common/character_roles | Checks if character has specific role   |
| Changed | `has_ruling_interest_group` | Type Key | common/interest_groups | Does the country's government include the named IG |
| Changed | `has_social_class` | Type Key | common/social_classes | Checks if the scoped pop belongs to a specific social class   |
| Changed | `has_social_hierarchy` | Type Key | common/social_hierarchies | Checks if the scoped country has adopted a specific social hierarchy   |
| Changed | `has_state_in_state_region` | Type Key | map_data/state_regions | Check if country has a state in the state region   |
| Changed | `has_state_trait` | Type Key | common/state_traits | Checks if scoped state has a certain trait   |
| Changed | `has_strategic_adjacency` |  -  |  -  | Checks if country in scope has a strategic adjacency (direct/coastal/military access/war goal adjacency) to target state/country   |
| Changed | `has_strategic_land_adjacency` |  -  |  -  | Checks if country in scope has a strategic adjacency (direct land border, military access or war goal adjacency only) to target state/country   |
| Changed | `has_strategy` | Type Key | common/ai_strategies | Checks if country in scope has a particular AI strategy   |
| Changed | `has_template` | Type Key | common/character_templates | Checks if character was made from the specified template   |
| Changed | `has_terrain` | Type Key | common/terrain | Check if the province has the specified terrain type   |
| Changed | `has_trait` | Type Key | common/character_traits | Checks if character has specific trait   |
| Changed | `has_unit_type` | Type Key | common/combat_unit_types | Checks if a Combat Unit is of the specified type   |
| Changed | `is_building_group` | Type Key | common/building_groups | True if scope is a building of given group   |
| Changed | `is_building_type` | Type Key | common/buildings | True if scope is a building of given type   |
| Changed | `is_character_role` | Type Key | common/character_roles | Checks if the scoped character role is a specific role   |
| Changed | `is_coastal` | Boolean |  -  | Check if a state borders a (non-impassable) sea region or if a country contains any such state.   |
| Changed | `is_company_type` | Type Key | common/company_types | Checks if scoped company is of the specified type   |
| Changed | `is_country_type` | Type Key | common/country_types | Checks the countrys type   |
| Changed | `is_diplomatic_action_type` | Type Key | common/diplomatic_actions | Checks diplomatic pact is of a certain action type   |
| Changed | `is_diplomatic_catalyst_type` | Type Key | common/diplomatic_catalysts | Checks diplomatic catalyst is of a certain catalyst type   |
| Changed | `is_diplomatic_play_type` | Type Key | common/diplomatic_plays | Checks diplomatic play is of a certain type   |
| Changed | `is_doing_piracy_in_region` | Type Key | common/strategic_regions | Checks if a Fleet is doing piracy in the specified strategic region   |
| Changed | `is_enacting_law` | Type Key | common/laws | Checks if the scoped country is enacting a specific law type.   |
| Changed | `is_in_geographic_region` | Type Key | common/geographic_regions | Checks if a scoped object is in a specific geographic region   |
| Changed | `is_interest_group_type` | Type Key | common/interest_groups | Checks if Interest Group is of a certain type   |
| Changed | `is_involved_in_journal_entry` | Type Key | common/journal_entries | Check if the country is involved in a specific journal entry   |
| Changed | `is_member_of_lobby` | Type Key | common/political_lobbies | Checks if interest group is member of a certain lobby type   |
| Changed | `is_not_in_geographic_region` | Type Key | common/geographic_regions | Checks if a scoped object is NOT in a specific geographic region   |
| Changed | `is_party_type` | Type Key | common/parties | Checks if the scoped party's type is the specified one   |
| Changed | `is_political_lobby_type` | Type Key | common/political_lobbies | Checks political lobby is of a certain lobby type   |
| Changed | `is_political_movement_type` | Type Key | common/political_movements | Check if a political movement is a particular type   |
| Changed | `is_pop_type` | Type Key | common/pop_types | Checks if pop is of specified type   |
| Changed | `is_researching_technology` | Type Key | common/technology/technologies | Check if the country is actively researching a tech   |
| Changed | `is_same_law_group_as` | Type Key | common/laws | Checks if scope law type is in the same group as the target law type scope   |
| Changed | `is_ship_type` | Type Key | common/ship_types | Checks if scoped ship is of the specified type   |
| Changed | `is_template_used` | Type Key | common/character_templates | Checks if character template has already been used   |
| Changed | `is_tutorial_lesson_active` | Type Key | common/tutorial_lessons | Is this the current tutorial lesson?   |
| Changed | `law_approved_by` | Type Key | common/interest_groups | Checks whether the scoped law is approved by an interest group   |
| Changed | `leading_producer_of` | Type Key | common/goods | Checks if country is producing the most of a certain good   |
| Changed | `market_exports` | Value |  -  | Compare total units of exports from scope to target market (if set) or world market in general (if no market specified)   |
| Changed | `market_exports_reliance` | Value |  -  | Compare fraction of buy orders in scope market that are due to exports to target market (if set) or world market in general (if no market specified)   |
| Changed | `market_imports` | Value |  -  | Compare total units of imports from target to scope market   |
| Changed | `market_imports_reliance` | Value |  -  | Compare fraction of buy orders in scope market that are due to imports from target market (if set) or world market in general (if no market specified)   |
| Changed | `market_trade` | Value |  -  | Compare total units of goods traded between scope market and target market (if set) or world market in general (if no market specified)   |
| Changed | `market_trade_reliance` | Value |  -  | Compare fraction of buy and sell orders in scope market that are due to trade with target market (if set) or world market in general (if no market specified)   |
| Changed | `most_prominent_revolting_interest_group` | Type Key | common/interest_groups | Checks if the most prominent revolting interest group in the scoped state has the given interest group type. Evaluates false if the scoped state is not in revolt.   |
| Changed | `owns_entire_state_region` | Type Key | map_data/state_regions | Check if country owns entire region   |
| Changed | `owns_treaty_port_in` | Type Key | map_data/state_regions | Does country own the treaty port in assigned state region   |
| Changed | `pop_employment_building` | Type Key | common/buildings | Checks if pop is working in a specific building type   |
| Changed | `pop_employment_building_group` | Type Key | common/building_groups | Checks if pop is working in a specific building type   |
| Changed | `pop_type_percent_country` | Value |  -  | Checks whether the scoped country has \<percent\> of its population belonging to the specified pop type   |
| Changed | `primary_cultures_percent_country` | Value |  -  | Checks that a country's population has a certain percentage of the target country's primary cultures   |
| Changed | `primary_cultures_percent_state` | Value |  -  | Checks that a state's population has a certain percentage of the target country's primary cultures   |
| Changed | `primary_role` | Type Key | common/character_roles | Checks if the character's primary role is the specified role   |
| Changed | `shares_heritage_trait_group_with_religion` | Type Key | common/religions | Checks if the religion shares any heritage trait group with another religion   |
| Changed | `shares_heritage_trait_with_religion` | Type Key | common/religions | Checks if the religion shares any heritage trait with another religion   |
| Changed | `was_formed_from` | Type Key | common/country_definitions | Check if a formed country previously had a specific definition   |
| Changed | `would_sponsor_amendment` | Type Key | common/amendments | Check if scoped IG would sponsor an amendment of a given type   |
| Removed | `additional_war_exhaustion` | Value |  -  | Compares the additional war exhaustion the scoped country has accumulated from scripted events in the target diplomatic play   |
| Removed | `enemy_contested_wargoals` | Value |  -  | Determines the fraction of war goals that enemies in the war are currently contesting   |
| Removed | `has_war_exhaustion` | Value |  -  | Checks the war exhaustion of the target country in the scoped war   |
| Removed | `war_exhaustion_from_acceptance_of_dead` | Value |  -  | Determines the war exhaustion a country gets from their degree of cultural acceptance of manpower killed in the war, regardless of what side they were on   |

## Event Targets
| Type | Event Target | Description |
|--|--|--|
| Added | `color` | Scope to the color of the object |
| Added | `military_formation` | Links from a combat unit scope to the military formation the combat unit belongs to |
| Added | `secession_tag` | Scope to the country the scoped political movement would secede as, if any. |
| Added | `ai_ship_purchase_rejected_share` | Share of the target ship's AI ship category sent in the scoped treaty that the receiving country does not want at all, because its navy has no use for that category (example: value = "scope:treaty.ai_ship_purchase_rejected_share(scope:article.input_ship)") |
| Added | `ai_ship_purchase_value_multiplier` | How much the receiving country of the target ship's ship transfer article in the scoped treaty values the ship, based on its need for that ship category (example: value = "scope:treaty.ai_ship_purchase_value_multiplier(scope:article.input_ship)") |
| Added | `ai_ship_sale_remaining_share` | Share of its wanted ships in the target ship's AI ship category that the country giving away the ship in the scoped treaty would have left afterwards (example: value = "scope:treaty.ai_ship_sale_remaining_share(scope:article.input_ship)") |
| Added | `ai_regional_objective_type` | Scope to an AI regional objective type from its key (ai_regional_objective_type:ai_regional_objective_acquire_state) |
| Added | `ai_strategic_region_stance_type` | Scope to an AI regional stance type from its key (ai_strategic_region_stance_type:stance_conquer_region) |
| Added | `aro` | Scope to an AI regional objective type from its key (aro:ai_regional_objective_acquire_state) |
| Added | `global_average_gdp_per_capita` | Get the average yearly predicted GDP per capita of all playable countries, the same set as global_gdp - note that this differs from global_population, which also counts decentralized countries |
| Added | `srs` | Scope to an AI regional stance type from its key (srs:stance_conquer_region) |
| Added | `carrying_capacity` | Total naval carrying capacity of scope country, across all of its fleets. |
| Added | `military_reach` | How realistically scope country can get an army into a target state or country, from 0 to 1. 1 for a land route through its own territory, its subjects or any chain of military access, or a war goal adjacency. Subjects that must join the target's wars count as part of the target, for a state only those bordering it. Otherwise the best landing on a coast of the target's owner, such a subject or a country it can march through, falling with the supply distance by sea from its closest port and the march distance from the landing to the target; 0 when no such coast can be reached by a strait-aware sea route. Naval carrying capacity is not considered. For a country, the best reach to any of its states |
| Added | `piracy_grievance_against` | Scope to how badly the piracy of a target country hurts this country, as a percentage - the goods it seized last week or its weekly average over the piracy tracking period, whichever is higher, as a share of this country's GDP, scaled the same way as the relations penalty from piracy. 0 below the cutoff for that penalty (example: piracy_grievance_against:root \>= 20) |
| Added | `relative_carrying_capacity` | Naval carrying capacity of scope country relative to its standing battalions. A value of 0.5 means it can transport half of them at once. Capped at 1, and returns 0 if the country has no battalions. |
| Added | `shippable_army_strength_against` | Army strength scope country can ship at once relative to the army strength of a target country. Strength is army power projection, so unit quality counts, and the shipped share is naval carrying capacity over standing battalions, capped at all of them. A value of 0.5 means it can ship half as much army strength at once as the target has |
| Added | `strait_access_grievance_against` | Scope to how badly the strait closures and blocked warships of a target country hurt this country, as a percentage - its dependence on the worst restricted strait, scaled by how harsh the restriction is. 0 when the target closes nothing this country depends on. Refreshed weekly and when a strait setting takes effect (example: strait_access_grievance_against:root \>= 20) |
| Added | `strait_dependence_by` | Scope to how much this country depends on straits controlled by a target country, as a percentage - the larger of its trade dependence across all of them and its military dependence on the single worst one. Military dependence is refreshed weekly (example: strait_dependence_by:root \>= 10) |
| Added | `strait_toll_grievance_against` | Scope to how badly the strait tolls of a target country hurt this country, as a percentage - its dependence on the worst tolled strait, scaled by the toll rate. 0 when the target tolls nothing this country depends on, or also closes a strait or blocks warships this country depends on. Refreshed weekly and when a strait setting takes effect (example: strait_toll_grievance_against:root \>= 20) |
| Added | `strait_trade_dependence_by` | Scope to how much this country relies on its trade volume through straits controlled by a target country, as a percentage of total reliance. Counts imports and exports, so a pure exporter is included (example: strait_trade_dependence_by:root \>= 25) |
| Added | `worst_piracy_grievance` | Scope to the largest piracy_grievance_against this country holds against any pirate (example: worst_piracy_grievance \>= 20) |
| Added | `worst_strait_access_grievance` | Scope to the largest strait_access_grievance_against this country holds against any strait controller (example: worst_strait_access_grievance \>= 20) |
| Added | `worst_strait_toll_grievance` | Scope to the largest strait_toll_grievance_against this country holds against any strait controller (example: worst_strait_toll_grievance \>= 20) |
| Added | `stance` | Scope to the AI regional stance an AI regional objective was rolled under |
| Added | `dependence_for` | Scope to how much a target country depends on this strait, as a percentage - whichever of trade_dependence_for and military_dependence_for is larger (example: dependence_for:root \>= 10) |
| Added | `fallout_for` | Scope to how many countries a target controller of this strait would hurt by closing it: like trade_fallout_for, but summing trade plus military dependence over every country that would lose passage, given the permissions that would apply once it is closed (example: fallout_for:root \>= 50) |
| Added | `military_dependence_for` | Scope to how much a target country would be cut off if this strait were closed to it, as a percentage - 100 if it would lose most of the sea it can reach, otherwise the worse of the GDP of its ports cut off from its home waters and the value of the regions its fleets operate in that it could no longer reach. 0 for a country without ports. Refreshed weekly (example: military_dependence_for:root \>= 25) |
| Added | `military_fallout_for` | Scope to how many countries a target controller of this strait would hurt by blocking warships: like trade_fallout_for, but summing military_dependence_for over every country that would lose passage, given the permissions that would apply once warships are blocked (example: military_fallout_for:root \>= 50) |
| Added | `only_allies_fallout_for` | Scope to how many countries a target controller of this strait would hurt by letting only its allies through its current restriction: like trade_fallout_for, but summing trade plus military dependence (closed) or military_dependence_for (warships blocked) over every country that would lose passage. 0 while the strait is open (example: only_allies_fallout_for:root \>= 50) |
| Added | `trade_dependence_for` | Scope to how much a target country relies on its trade volume through this strait, as a percentage of total reliance. Counts imports and exports (example: trade_dependence_for:root \>= 25) |
| Added | `trade_fallout_for` | Scope to how many countries a target controller of this strait would hurt by charging tolls: the sum of trade_dependence_for over every country not exempt from its tolls, not shut out by its current restriction, not its rival or diplomatic play enemy, and at or above the strait grievance dependence cutoff, each scaled down by its GDP relative to the controller. Multiply by the toll rate for the share of that trade the tolls would take. Refreshed weekly and when a strait setting takes effect (example: trade_fallout_for:root \>= 50) |
| Added | `home_state` | Scope to the home state of the character! |
| Removed | `strait_trade_importance_by` | Scope to the trade importance of goods this country is trading through straits controlled by a target country. Accumulated value is multiplied by STRAIT_FULL_CONTROL_TRADE_IMPORTANCE_MULT for straits where the controller controls both sides (example: strait_trade_importance_by:root \>= 100) |

## Iterators
| Type | Iterator |
|--|--|
| Added | `{any\|every\|ordered\|random}_releasable_state` |
| Added | `{any\|every\|ordered\|random}_scope_regional_objective` |
## On Actions
| Type | On Action | Scope |
|--|--|--|
| Added | `on_wargoal_enforced_by_timer` | `none` |
| Added | `on_character_returned_from_exile` | `none` |
| Added | `on_journal_entry_concluded` | `none` |
| Added | `on_power_bloc_formed` | `none` |
| Added | `on_diplo_play_subject_backstab_overlord` | `none` |
| Added | `on_lost_war` | `none` |
| Added | `on_won_war` | `none` |
| Added | `on_diplo_play_overlord_protects_subject` | `none` |
| Added | `on_inconclusive_war` | `none` |
| Removed | `on_journal_entry_failed` | `none` |
| Removed | `on_journal_entry_completed` | `none` |

