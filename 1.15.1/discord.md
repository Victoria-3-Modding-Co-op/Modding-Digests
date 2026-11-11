# Release 1.15.1
## Script Documentation 
 * [Table of Contents](changes_script_docs.md#table-of-contents)
 * [Triggers](changes_script_docs.md#triggers)
## Relevant Type Documentation Changes
You can find a diff of these files in the repository:
* [common/map_mode_defaults](types/map_mode_defaults.md)
* [common/diplomatic_plays](types/diplomatic_plays.md)
* [common/journal_entries](types/journal_entries.md)
* [common/political_movements](types/political_movements.md)
## Notes
This is a minor release but some notable stuff:
- The `dlc` field in journal entries now also accepts a list of multiple DLC
- Political movements now have a new field `can_secede_during_revolution = no`
- Diplomatic plays have a new trigger block `subject_join_initiator_trigger`
- Introduced a new common folder: `common/map_mode_defaults`
## File Changes
There are file changes.
A detailed list can be found below.

**Link:** [File Changes](changes_files.md)