# Release 1.9.0
## Breaking Changes
- Naval invasion effects/triggers/actions have been renamed to invasion
- Everything about Trade Routes has been removed and replaced with the world market change
- Modifier duration script values are now in days not months:
  - `short_modifier_time`
  - `normal_modifier_time`
  - `long_modifier_time`
  - `very_long_modifier_time`
  - `stupidly_long_modifier_time`
- Decisions and Scripted Buttons now use a math block (like script values) for their `ai_chance`
- Moved scripted tests folder from the common folder to the tools folder
- A lot of GUI changes so overwritten types should be checked
- The `max_manpower` property has been added to combat unit objects
## General
- [Treaty Documentation](./docs/treaty_articles.md)
- Financial Districts and Company HQs now provide 5 Urbanization per level
- Character Traits can now be given an `executive_modifier`, which applies to all building levels owned by the executive's company
- It is now possible to specify a parent type for law types. Law types with parents inherit all ideological stances from their parent, and cannot be given specific ideological stances themselves
- Added new text formatting tags `:` and `;` which are used like the `+` and `-` tags, but colors numbers blue/gold instead of green/red
- Added optional `custom_completion_header`, `custom_failure_header`, `custom_on_completion_header`, and `custom_on_failure_header` properties to journal entries to allow customized flavor for completion and failure states
- Military production methods now specify a soldiers / officers ratio rather than absolute numbers
- Added a `cooldown` entry for `scripted buttons` (used by Journal Entries) which can be used to specify how often the button can be used
## Documentation Changes
### Script Docs
- Trade Routes have been replaced with exports and imports
- Three new scopes have been added:
  - `treaty`
  - `treaty_article`
  - `treaty_article_options`
- New additions for the `company` scope
- Added some new general triggers and effects
  - `error_log`: Write to the error log
  - List effects (like `add_to_list`) now support timed entries
  - And more...
- Added quite a lot of war-specific triggers, effects and event targets
  - Naval invasion has been renamed to invasion

**Link:** [Detailed Changes](./changes_script_docs.md)
### Data Types
- Dividing is now supported
- Added new types/scopes for:
  - World Market
  - Treaties
  - Invasions
  - Companies
- Changes to the Portrait Editor
- Added GUI data Profiler types
- Removed GUI editor types

**Link:** [Detailed Changes](./changes_data_types.md)
## File Changes
There are a lot of file changes.
A detailed list can be found below.

**Link:** [File Changes](./changes_files.md)

If you find anything missing or wrong, please PM me or @ me in the https://discord.com/channels/827163966551621662/845461561706414130 channel