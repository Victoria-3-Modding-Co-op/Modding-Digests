# Release 1.10.0
## Breaking Changes
### Cultures & Discrimination Traits
Cultures now need one `language` and `heritage` trait. Other traits have been moved to a new `tradition` block Here is an example:
```
turkish= {
    color = hsv{ 0.99 0.48 0.80 }
    religion = sunni
    heritage = heritage_anatolian
    language = language_oghuz
    traditions = { tradition_rumelian }
    # ... further culture stuff
}
```
Discrimination traits now have a `type` and `group`. The detailed docs can be found [here](./docs/discrimination_traits.md) and [here](./docs/discrimination_trait_groups.md).
It seems like nearly all of them have been renamed, so check your triggers.

Finally, cultures now also need new **static** modifiers to be valid.
Previously, each culture needed two static modifiers:
- `<culture>_standard_of_living_modifier_positive`
- `<culture>_standard_of_living_modifier_negative`

Now each culture **also** needs:
- `<culture>_cultural_acceptance_modifier_positive`
- `<culture>_cultural_acceptance_modifier_negative`
- `<culture>_fervor_target_modifier_positive`
- `<culture>_fervor_target_modifier_negative`
### Religions
Religions now have only one trait and instead of `texture` it is now `icon`. Here is an example:
```
catholic = {
	icon = "gfx/interface/icons/religion_icons/catholic.dds"
	heritage = heritage_christian
	color = { 0.8 0.55 0.2 }
}
```
### Modifiers
Many modifiers around culture & religion acceptance were replaced. Generally, acceptance is now much more granular and modifiable.
Here is an **incomplete** example:
- Removed `country_acceptance_culture_base_add`
- Added `country_acceptance_homeland_add`
- Added `country_acceptance_shared_tradition_trait_add`
- Added `country_acceptance_shared_heritage_trait_group_add`

A full list of changes can be found in the script docs.
## Documentation Changes
### Script Docs
- Cultural acceptance modifiers have been totally reworked
- Two new types of values as well as triggers and effects for them:
  - national `fervor` on a culture level
  - `obstinance` on a state level
- Triggers and effects around `national_awakening`
- Triggers to check for the new discrimination traits (`language`, `heritage` and `tradition`) as well as their groups and to compare those between cultures
- A few minor additions for trade volume values in event targets
- Effects to liberate slaves (all, unincorporated, incorporated)
- New effect to trigger a specific option in an event (`execute_event_option`)
- Country iterators can now be run in `state_region` scope (i.e. `every_scope_country`)
- New `on_new_interest_group_leader` on action

**Link:** [Detailed Changes](./changes_script_docs.md)
### Data Types
Will be added later

## File Changes
There are file changes.
A detailed list can be found below.

**Link:** [File Changes](./changes_files.md)