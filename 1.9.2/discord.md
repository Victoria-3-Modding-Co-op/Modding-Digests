# Release 1.9.2
## Documentation Changes
### Script Docs
- Updated Effect documentation for `set_export_tariff_level` (clarified that it needs a goods scope)
- Updated Effect documentation for `set_import_tariff_level` (clarified that it needs a goods scope)
- Added Event Target: `remaining_binding_period`
- Added Event Target: `amended_treaty`
- Removed Event Target: `binding_period_original`
- Added Trigger: `has_any_law_commitment`
- Added Trigger: `has_any_subventions_on`
- Added Trigger: `has_any_tariffs_on`
- Added Trigger: `is_renegotiation`
- Added Trigger: `law_is_available`
### Data Types
- Added: `ArticleDraft.OnInputTextChanged`
- Added: `RightClickMenuManager.ToggleSwayOfferArticleTypeInput( Arg0, Arg1, Arg2 )`
- Added: `SwayOffer.RequiresAnyInput`
- Added: `SwayOffer.SetArticleInputsFromDraft( Arg0 )`
- Added: `TreatyDraft.GetArticleTypeAcceptance( Arg0, Arg1 )`
- Added: `TreatyDraft.GetArticleTypeAcceptanceBreakdown( Arg0, Arg1 )`
- Added: `TreatyDraft.GetArticleTypeAcceptanceBreakdownWithBuilding( Arg0, Arg1, Arg2 )`
- Added: `TreatyDraft.GetArticleTypeAcceptanceBreakdownWithCompany( Arg0, Arg1, Arg2 )`
- Added: `TreatyDraft.GetArticleTypeAcceptanceBreakdownWithCompanyAndBuilding( Arg0, Arg1, Arg2, Arg3 )`
- Added: `TreatyDraft.GetArticleTypeAcceptanceBreakdownWithCountry( Arg0, Arg1, Arg2 )`
- Added: `TreatyDraft.GetArticleTypeAcceptanceBreakdownWithGood( Arg0, Arg1, Arg2 )`
- Added: `TreatyDraft.GetArticleTypeAcceptanceBreakdownWithLaw( Arg0, Arg1, Arg2 )`
- Added: `TreatyDraft.GetArticleTypeAcceptanceBreakdownWithRegion( Arg0, Arg1, Arg2 )`
- Added: `TreatyDraft.GetArticleTypeAcceptanceBreakdownWithState( Arg0, Arg1, Arg2 )`
- Added: `TreatyDraft.GetArticleTypeAcceptanceWithBuilding( Arg0, Arg1, Arg2 )`
- Added: `TreatyDraft.GetArticleTypeAcceptanceWithCompany( Arg0, Arg1, Arg2 )`
- Added: `TreatyDraft.GetArticleTypeAcceptanceWithCompanyAndBuilding( Arg0, Arg1, Arg2, Arg3 )`
- Added: `TreatyDraft.GetArticleTypeAcceptanceWithCountry( Arg0, Arg1, Arg2 )`
- Added: `TreatyDraft.GetArticleTypeAcceptanceWithGood( Arg0, Arg1, Arg2 )`
- Added: `TreatyDraft.GetArticleTypeAcceptanceWithLaw( Arg0, Arg1, Arg2 )`
- Added: `TreatyDraft.GetArticleTypeAcceptanceWithRegion( Arg0, Arg1, Arg2 )`
- Added: `TreatyDraft.GetArticleTypeAcceptanceWithState( Arg0, Arg1, Arg2 )`
- Added: `TreatyDraft.GetBreakPenaltiesDesc`

## File Changes
There are a lot of file changes.
A detailed list can be found below.

**Link:** [File Changes](./changes_files.md)