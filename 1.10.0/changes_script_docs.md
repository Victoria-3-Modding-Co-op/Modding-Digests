# Update 1.10.0 - Script Docs
## Table of Content
- [Effects](#effects)
  - [Additions](#additions)
  - [Changes](#changes)
- [Triggers](#triggers)
  - [Additions](#additions-1)
  - [Removals](#removals)
  - [Changes](#changes-1)
- [Event Targets](#event-targets)
  - [Additions](#additions-2)
- [On Actions](#on-actions)
  - [Additions](#additions-3)

## Effects
### Additions
- Added `add_culture_acceptance_modifier`: Apply a cultural acceptance modifier in the scoped country for the given culture. Other than the required culture argument, this effect has the same syntax as add_modifier.
- Added `set_fervor`: Sets the fervor of a scoped culture
- Added `add_fervor`: Adds fervor to a scoped culture
- Added `add_fervor_target_modifier`: Apply a fervor target modifier in the scoped country for the given culture. Other than the required culture argument, this effect has the same syntax as add_modifier.
- Added `add_tradition_trait`: Adds a new tradition trait to the culture in scope
- Added `remove_tradition_trait`: Removes an existing tradition trait from the culture in scope
- Added `start_national_awakening`: Starts a cultural awakening
- Added `end_national_awakening`: Ends a cultural awakening: end_national_awakening = cu:british
- Added `execute_event_option`: Execute effects of the specified event option in the specified event
- Added `liberate_slaves`: Frees all slaves in the country/state
- Added `liberate_slaves_in_incorporated_states`: Frees all slaves in the country's incorporated states
- Added `liberate_slaves_in_unincorporated_states`: Frees all slaves in the country's unincorporated states
### Changes
- `every_scope_country`: Now supports `state_region` scope
- `every_scope_interest_marker`: Now supports `state_region` scope
- `ordered_scope_country`: Now supports `state_region` scope
- `ordered_scope_interest_marker`: Now supports `state_region` scope
- `random_scope_country`: Now supports `state_region` scope
- `random_scope_interest_marker`: Now supports `state_region` scope
- `every_scope_country`: Now supports `state_region` scope
## Triggers
### Additions
- Added `country_fervor_primary_culture`: Compares with the hightest fervor of a country's primary cultures
- Added `culture_current_fervor`: Compares the current fervor for a given culture, culture_current_fervor > 0.2
- Added `culture_has_national_awakening`: Checks if the scoped culture has an active national awakening
- Added `culture_national_awakening_occurred`: Checks if the scoped culture has ever had a national awakening started
- Added `culture_target_fervor`: Compares the target fervor for a given culture, culture_target_fervor > 0.2
- Added `has_discrimination_trait_group`: Checks if scoped culture or religion has the given discrimination trait group
- Added `is_holder_of_wargoal_in_war`: Checks if the specified country is the holder of any wargoal in the scoped war
- Added `is_target_of_wargoal_in_war`: Checks if the specified country is the target of any wargoal in the scoped war
- Added `movement_can_cause_obstinance`: Check if the political movement can generate obstinance in states
- Added `movement_is_causing_obstinance`: Check if the political movement is causing obstinance in any state
- Added `obstinance`: Compares state obstinance
- Added `shares_heritage_trait_group_with_any_primary_culture`: Checks if culture shares any trait group marked as 'heritage' with any of a country's primary cultures
- Added `shares_heritage_trait_group_with_culture`: Checks if culture shares any trait group marked as 'heritage' with another culture
- Added `shares_heritage_trait_group_with_religion`: Checks if the religion shares any heritage trait group with another religion
- Added `shares_heritage_trait_group_with_state_religion`: Checks if the religion shares any heritage trait group with a country's state religion
- Added `shares_heritage_trait_with_culture`: Checks if culture shares any trait marked as 'heritage' with another culture
- Added `shares_heritage_trait_with_religion`: Checks if the religion shares any heritage trait with another religion
- Added `shares_language_trait_group_with_any_primary_culture`: Checks if culture shares any trait group marked as 'language' with any of a country's primary cultures
- Added `shares_language_trait_group_with_culture`: Checks if culture shares any trait group marked as 'language' with another culture
- Added `shares_language_trait_with_any_primary_culture`: Checks if culture shares any trait marked as 'language' with any of a country's primary cultures
- Added `shares_language_trait_with_culture`: Checks if culture shares any trait marked as 'language' with another culture
- Added `shares_tradition_trait_with_any_primary_culture`: Checks if culture shares any trait marked as 'tradition' with any of a country's primary cultures
- Added `shares_tradition_trait_with_culture`: Checks if culture shares any trait marked as 'tradition' with another culture
- Added `state_has_national_awakening`: Checks if the scoped state is in a state region with an active national awakening map marker
### Removals
- Removed `shares_heritage_and_other_trait_with_any_primary_culture`
- Removed `shares_non_heritage_trait_with_any_primary_culture`
- Removed `shares_trait_with_any_primary_culture`
- Removed `shares_trait_with_state_religion`
### Changes
- `any_scope_country`: Now supports `state_region` scope
## Event Targets
### Additions
- Added `national_awakening_state_region`: Links from a culture scope to the state region with an active national awakening for that culture
- Added `total_export_value`: Scope to the total value of scope country's exports to the world market (example: total_trade_value >= 1000)
- Added `total_import_value`: Scope to the total value of scope country's imports from the world market (example: total_trade_value >= 1000)
- Added `total_trade_value`: Scope to the total value of scope country's trade with the world market (example: total_trade_value >= 1000)
## On Actions
### Additions
- Added `on_new_interest_group_leader`
