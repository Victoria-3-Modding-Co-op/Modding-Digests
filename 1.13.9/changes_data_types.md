# Data Type Documentation 1.13.9
## Table of Contents
 * [Types](#types)
 * [Global Promotes](#global-promotes)
## Notes
This is just a very basic overview of added and removed data types.

Changed elements are **not** mentioned here.
## Types
| Type | Data Type |
|--|--|
| Added | `SearchBar` |
| Added | `SearchResult` |
## Global Promotes
| Type | Promote | Return Type |
|--|--|--|
| Added | `GetVariableFromGlobalVariableMap( Arg0, Arg1 )` | `Scope` |
| Added | `GetVariableFromGlobalVariableMap( Arg0, Arg1 )` | `[unregistered]` |
| Added | `ClearDefaultMapMode` | `void` |
| Added | `GetActionLockInputText` | `CString` |
| Added | `GetDynTrendMaxPadded( Arg0 )` | `CFixedPoint` |
| Added | `GetDynTrendMinPadded( Arg0 )` | `CFixedPoint` |
| Added | `GetGlobalMapKeys( Arg0 )` | `[unregistered]` |
| Added | `GetMaxPadded( Arg0 )` | `CFixedPoint` |
| Added | `GetMinPadded( Arg0 )` | `CFixedPoint` |
| Added | `GetSelectedFleetsMissionRegionsBreakdown` | `CString` |
| Added | `GetSelectedFleetsMissionSeaRegions` | `[unregistered]` |
| Added | `GetSelectedMapModeIcon` | `[unregistered]` |
| Added | `GlobalVariableMapContainsKey( Arg0, Arg1 )` | `bool` |
| Added | `GlobalVariableMapContainsValue( Arg0, Arg1 )` | `bool` |
| Added | `GlobalVariableMapExists( Arg0 )` | `bool` |
| Added | `HasActionLock` | `bool` |
| Added | `HasDefaultMapMode` | `bool` |
| Added | `HasMouseTendency` | `bool` |
| Added | `SetDefaultMapMode` | `void` |
| Added | `TimerOrActionLock` | `bool` |
| Added | `ToggleMapModeLock` | `void` |
| Added | `concept_blockade_efficiency` | `[unregistered]` |
| Added | `concept_blockade_efficiency_desc` | `[unregistered]` |
| Added | `concept_blockade_resistance` | `[unregistered]` |
| Added | `concept_blockade_resistance_desc` | `[unregistered]` |
| Added | `concept_company_category` | `[unregistered]` |
| Added | `concept_company_category_desc` | `[unregistered]` |
| Added | `concept_diplomatic_relevancy` | `[unregistered]` |
| Added | `concept_diplomatic_relevancy_desc` | `[unregistered]` |
| Added | `concept_government_premium` | `[unregistered]` |
| Added | `concept_government_premium_desc` | `[unregistered]` |
| Added | `concept_strategic_adjacency` | `[unregistered]` |
| Added | `concept_strategic_adjacency_desc` | `[unregistered]` |
| Removed | `GetSelectedFleetsMissionRegionsDesc` | `CString` |
| Removed | `SetLockedMapMode` | `void` |
| Removed | `UnlockMapMode` | `void` |

