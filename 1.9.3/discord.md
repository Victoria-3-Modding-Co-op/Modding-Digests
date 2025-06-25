# Release 1.9.3
## Documentation Changes
### Script Docs
- Added Event Target: `principal`
- Added Event Target: `market_export_cap`
- Added Event Target: `market_import_cap`
- Added Event Target: `treaty_exports`
- Added Event Target: `treaty_imports`
- Added On Action: `on_treaty_article_removed`
### Data Types
- Added: `TopScope.sTreaty( Arg0 )`
- Added: `TopScope.sTreatyArticle( Arg0 )`
- Added: `Article.GetMaintenancePayer`
- Added: `Article.GetAboutToBreakReasonDesc`
- Added: `Article.GetAutoBreakReasonDesc`
- Removed: `ArticleType.RecipientPaysMaintenance`
- Added: `CompanyType.GetPotentialBuildingTypes( Arg0 )`
- Changed: `CompanyType.AccessBuildingTypes` to `CompanyType.AccessBuildingTypes( Arg0 )`
- Added: `MilitaryFormation.GetOrganizationTargetPercentage`
- Added: `Modifier.GetNonFormattedValueWithBreakdownAndNoDecimalsFor( Arg0 )`
- Added: `SwayOffer.GetAcceptSwayScore( Arg0, Arg1, Arg2 )`
- Added: `Treaty.GetBindingPeriodEndGameDate`
- Added: `Treaty.GetStartGameDate`
- Added: `Treaty.IsDraft`
- Added: `TreatyDraft.GetNumAvailableInputOptions( Arg0, Arg1 )`

## File Changes
There are file changes.
A detailed list can be found below.

**Link:** [File Changes](./changes_files.md)