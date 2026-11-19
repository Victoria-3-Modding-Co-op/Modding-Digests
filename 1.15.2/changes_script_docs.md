# Script Documentation 1.15.2
## Table of Contents
 * [Effects](#effects)
 * [Triggers](#triggers)
 * [On Actions](#on-actions)
## Notes
 * **Changed** means the description, scopes or anything related to the documentation for this element has changed
 * The on action scope is based on the script documentation, for more information see the `common/on_actions` directory
## Effects
| Type | Effect | Value Type | Description |
|--|--|--|--|
| Added | `conclude_journal_entry` |  -  | Concludes the scoped country's journal entry of the given type with the regular outcome whose effect_header matches, hidden = yes skips on_journal_entry_concluded   |
| Changed | `renege_treaty_ports_with` |  -  | Void all treaty-port treaties scoped country hosts for the target foreign power; the foreign power keeps the port provinces as ordinary territory   |
## Triggers
| Type | Trigger | Trait | Value Type | Description |
|--|--|--|--|--|
| Added | `can_regime_change` |  -  |  -  | Checks if the scoped country can enforce a regime change on the target country: the target has no recent regime change, an interest group in the scoped country's government is not marginalized in the target, and at least one of the target's laws would change   |
| Added | `has_naval_mission_without_area` | Boolean |  -  | Checks if a Fleet has a naval mission with no sea regions in its area   |
| Added | `is_character_interaction_available` | Type Key | common/character_interactions | Checks if a character interaction is available to the scoped country, meaning it is not on cooldown and its actor_capacity trigger passes. In character scope, also checks that the root country, or the character's own country when root is not a country, can target the character with the interaction   |
## On Actions
| Type | On Action | Scope |
|--|--|--|
| Removed | `on_diplo_play_subject_released_overlord` | `none` |
| Removed | `on_diplo_play_subject_released` | `none` |