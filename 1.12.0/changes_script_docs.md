# Update 1.12.0 - Script Docs
## Table of Content
- [Effects](#effects)
  - [Additions](#additions)
- [Triggers](#triggers)
  - [Additions](#additions-1)
  - [Removals](#removals)
- [Event Targets](#event-targets)
  - [Additions](#additions-2)
  - [Removals](#removals-1)
- [On Actions](#on-actions)
  - [Additions](#additions-3)
  - [Changes](#changes)
- [Modifiers](#on-actions)
    - [Additions](#additions-4)
    - [Removals](#removals-2)

## Effects
### Additions
- Added `remove_amendment`: Removes an amendment immediately without checking cooldown
- Added `remove_involved_country`: Removes target country from involved countries in scope journal entry
- Added `retire_character`: Kill a character
- Added `set_character_as_executive`: Makes scope character the executive of target company
- Added `set_electoral_confidence`: Set x% electoral confidence in scope country
- Added `set_has_negotiated`: Sets whether an interest group has finished negotiating
- Added `spawn_entity_effect`: Spawns a temporary entity at the center of the scoped state region for a number of seconds
- Added `start_earthquake_effect`: Starts an earthquake camera shake centered on the scoped state region
- Added `transfer_subject`: Transfers subject from another country to current scope country
- Added `finish_negotiation`: Finishes the negotiation that has started for an interest group
- Added `improve_stance`: Improves the stance of an IG on the currently enacting law by the given number of steps
- Added `add_amendment`: Adds an amendment to the scoped law
- Added `add_electoral_confidence`: Adds x% electoral confidence to scope country
- Added `add_involved_country`: Makes target country an involved country in scope journal entry
- Added `{every|ordered|random}_scope_amendment`: Iterate through amendments of the scoped law
- Added `{every|ordered|random}_possible_amendment_type`: Iterate through amendment types that could be added to the scoped law
- Added `{every|ordered|random}_country_in_<geographic_region_short_key>`: Iterate over geographic region countries
- Added `{every|ordered|random}_state_in_<geographic_region_short_key>`: Iterate over geographic region states
- Added `{every|ordered|random}_province_in_<geographic_region_short_key>`: Iterate over geographic region provinces
- Added `{every|ordered|random}_state_region_in_<geographic_region_short_key>`: Iterate over geographic region state regions
- Added `{every|ordered|random}_strategic_region_in_<geographic_region_short_key>`: Iterate over geographic region strategic regions

## Triggers
### Additions
- Added `amendment_can_be_repealed`: Check if the amendment can be repealed
- Added `amendment_count`: Compares the number of amendments in scope law
- Added `amendment_stance`: Compares the stance of the scoped character, movement or interest group has on the specified amendment type, assuming the amendment type has a parent law
- Added `can_transfer_subject`: Check if the target country can be transferred as a subject to the scoped country
- Added `any_country_in_<geographic_region_short_key>`: Iterate over geographic region countries
- Added `any_state_in_<geographic_region_short_key>`: Iterate over geographic region states
- Added `any_province_in_<geographic_region_short_key>`: Iterate over geographic region provinces
- Added `any_state_region_in_<geographic_region_short_key>`: Iterate over geographic region state regions
- Added `any_strategic_region_in_<geographic_region_short_key>`: Iterate over geographic region strategic regions
- Added `country_average_culture_and_religion_pop_acceptance`: Average acceptance of country pops of a specific culture and religion
- Added `country_average_culture_pop_acceptance`: Average acceptance of country pops of a specific culture
- Added `country_average_religion_pop_acceptance`: Average acceptance of country pops of a specific religion
- Added `state_average_culture_and_religion_pop_acceptance`: Average acceptance of state pops of a specific culture and religion
- Added `state_average_culture_pop_acceptance`: Average acceptance of state pops of a specific culture
- Added `state_average_religion_pop_acceptance`: Average acceptance of state pops of a specific religion
- Added `current_law_enactment_score`: Check what the scoped country's AI enactment score is for the currently enacting law
- Added `electoral_confidence`: Compares the electoral confidence of scope country
- Added `fixed_expenses`: Does the country have this amount of weekly fixed expenses
- Added `fixed_income`: Does the country have this amount of weekly fixed income
- Added `net_total_income`: Does the country have this amount of income after expenses (counting all income & expenses)
- Added `net_fixed_income`: Does the country have this amount of income after expenses (counting only fixed income & expenses)
- Added `total_expenses`: Does the country have this amount of income, including from temporary sources
- Added `total_income`: Does the country have this amount of expenses, including from temporary sources
- Added `has_amendment`: Check if scoped law has an amendment of the given type
- Added `has_negotiated`: Checks whether the interest group has finished negotiation
- Added `is_negotiating`: Check if the scoped country or interest group is currently negotiating
- Added `has_parent_law`: Check if the amendment type has a parent law
- Added `is_exported_to`: Whether the scoped market goods are being exported to the target market by the local market
- Added `is_imported_from`: Whether the scoped market goods are being imported from the Target market by the local market
- Added `is_in_geographic_region`: Checks if a scoped object is in a specific geographic region
- Added `is_not_in_geographic_region`: Checks if a scoped object is NOT in a specific geographic region
- Added `is_in_same_market_area`: Checks if scope state is in the same market area as target state
- Added `is_involved_in_journal_entry`: Check if the country is involved in a specific journal entry
- Added `is_major_formation`: Checks if a country formation is a major formation
- Added `stall_chance`: Compares the current enactment stall chance in scope country (including values from enactment modifier)
- Added `stall_chance_for_law`: Compares the enactment stall chance in scope country for given law (including values from enactment modifier)
- Added `stall_chance_for_law_without_enactment_modifier`: Compares the enactment stall chance in scope country for given law but excludes values from enactment modifier
- Added `stall_chance_without_enactment_modifier`: Compares the current enactment stall chance in scope country but excludes values from enactment modifier
- Added `would_sponsor_amendment`: Check if scoped IG would sponsor an amendment of a given type
### Removals
- Removed `can_add_wargoal_against`
- Removed `weekly_net_fixed_income`

## Event Targets
### Additions
- Added `world_market_hub`: Scope to the world market hub state associated with the scoped state
- Added `law_type`: Scope from an object to its law type
- Added `attached_law`: Links from an amendment scope to the law the amendment is attached to
- Added `parent_law_type`: Links from an amendment scope to the law type that is considered the amendment's parent
- Added `sponsor`: Links from an amendment scope to the interest group that sponsored the amendment
- Added `average_progressiveness`: Get the average progressiveness of the scoped character or interest group
- Added `required_construction`: Get the required amount of construction for scope building type
- Added `largest_exporting_market`: Scope to the largest exporting market for the scope market good to the local market
- Added `largest_importing_market`: Scope to the largest importing market for the scope market good from the local market
### Removals
- Removed `expenses`
- Removed `fixed_expenses`

## On Actions
### Additions
- Added `on_empty_battle_lost`
- Added `on_empty_battle_won`
- Added `on_amendment_repealed`
- Added `on_ruler_selected`
- Added `on_negotiate_with`
### Changes
- `on_election_campaign_start` now runs in `country` scope

## Modifiers
These are handpicked highlights/generalization since the renaming of buildings and building groups caused a lot of differences.
### Additions
- Added `battle_total_combat_width_mult`: A bonus or penalty to the total Combat Width for this side of the Battle
- Added `building_{pop_type}_job_attractiveness_mult`: A bonus or penalty to the wages a Building has to offer to be able to hire a pop type
- Added `building_{pop_type}_standard_of_living_add`: A bonus or penalty to the Standard of Living for employed pop type
- Added `character_advancement_speed_mult`: A bonus or penalty to how quickly a General accumulates Advancement Progress
- Added `character_battle_condition_guerilla_ambush_mult`: Chance of being affected by the Ambush Battle Condition
- Added `character_coup_strength_add`: An increase or decrease to the Strength of a prospective Coup launched by this Commander
- Added `character_coup_strength_mult`: An increase or decrease to the Strength of a prospective Coup launched by this Commander
- Added `country_{good}_export_tariffs_rate_add`
- Added `country_{good}_import_tariffs_rate_add`
- Added `country_{good}_max_export_tariffs_level_add`
- Added `country_{good}_max_import_tariffs_level_add`
- Added `country_{good}_min_export_tariffs_level_add`
- Added `country_{good}_min_import_tariffs_level_add`
- Added `country_amenability_add`: A bonus or penalty to the Amenability of all Interest Groups in the country
- Added `country_{building_group}_require_subsidies_bool`
- Added `country_block_government_reform_bool`: Blocks the Country from reforming it's current Government
- Added `state_buy_orders_{good}_add`
- Added `state_devastation_decay_mult`: A bonus or penalty to the speed at which States recover from Devastation
- Added `state_minimum_incorporated_subsistence_arable_land_add`: An increase or decrease to the minimum fraction of a Incorporated State’s arable land which is reserved for Subsistence Building and cannot be used for other types of Buildings
### Removals
- Removed `state_migration_push_mult`
- Removed `unit_advancement_speed_mult`
- Removed `unit_convoy_requirements_mult`