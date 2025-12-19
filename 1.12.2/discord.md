# Release 1.12.2
## Breaking Changes
The `has_amendment` trigger now requires a scope and not a key as input:
```
# Old:
has_amendment = amendment_prussian_education

# New:
has_amendment = amendment_type:amendment_prussian_education
```
## Documentation Changes
### Script Docs
- Changed `has_amendment`

## File Changes
There are file changes.
A detailed list can be found below.

**Link:** [File Changes](./changes_files.md)