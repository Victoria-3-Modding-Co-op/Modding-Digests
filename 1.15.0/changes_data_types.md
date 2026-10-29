# Data Type Documentation 1.15.0
## Table of Contents
 * [Types](#types)
 * [Global Functions](#global-functions)
 * [Global Promotes](#global-promotes)
## Notes
This is just a very basic overview of added and removed data types.

Changed elements are **not** mentioned here.
## Types
| Type | Data Type |
|--|--|
| Added | `AIRegionalObjective` |
| Added | `AIRegionalObjectiveType` |
| Added | `CharacterPanelViewer` |
| Added | `ConcludedJournalEntry` |
| Added | `GlossaryType` |
| Added | `JournalEntryOutcome` |
| Added | `MapListCossackHostOption` |
| Added | `RegionalExilePool` |
| Added | `ScalingModifier` |

## Global Functions
| Type | Function | Return Type |
|--|--|--|
| Added | `ConceptByKey( Arg0 )` | `CString` |
| Added | `Glossary( Arg0, Arg1 )` | `CString` |
| Added | `HasCosmeticDlcFeature( Arg0 )` | `bool` |
| Added | `HasSupplyRouteArrowMapMode` | `bool` |
| Added | `IsShowingAlliedSupplyRoutes` | `bool` |
| Added | `IsShowingEnemySupplyRoutes` | `bool` |
| Added | `IsShowingOwnSupplyRoutes` | `bool` |
| Added | `ToggleAlliedSupplyRoutes` | `void` |
| Added | `ToggleEnemySupplyRoutes` | `void` |
| Added | `ToggleOwnSupplyRoutes` | `void` |
| Added | `concept_cold` | `[unregistered]` |
| Added | `concept_cold_desc` | `[unregistered]` |
| Added | `concept_cold_intensity` | `[unregistered]` |
| Added | `concept_cold_intensity_desc` | `[unregistered]` |
| Added | `concept_favorite` | `[unregistered]` |
| Added | `concept_favorite_desc` | `[unregistered]` |
| Added | `concept_hromada` | `[unregistered]` |
| Added | `concept_hromada_desc` | `[unregistered]` |
| Added | `concept_notable` | `[unregistered]` |
| Added | `concept_notable_desc` | `[unregistered]` |
| Added | `concept_prosvita` | `[unregistered]` |
| Added | `concept_prosvita_desc` | `[unregistered]` |
| Added | `concept_regional_objective` | `[unregistered]` |
| Added | `concept_regional_objective_desc` | `[unregistered]` |
| Added | `concept_siberian_exile` | `[unregistered]` |
| Added | `concept_siberian_exile_desc` | `[unregistered]` |
| Added | `concept_state_and_revolution_confrontation` | `[unregistered]` |
| Added | `concept_state_and_revolution_confrontation_desc` | `[unregistered]` |
| Added | `concept_state_and_revolution_consolidation` | `[unregistered]` |
| Added | `concept_state_and_revolution_consolidation_desc` | `[unregistered]` |
| Added | `concept_tsarpoints` | `[unregistered]` |
| Added | `concept_tsarpoints_desc` | `[unregistered]` |
| Added | `concept_ukaz` | `[unregistered]` |
| Added | `concept_ukaz_desc` | `[unregistered]` |
| Added | `concept_war_pressure` | `[unregistered]` |
| Added | `concept_war_pressure_desc` | `[unregistered]` |
| Added | `glossary_annexation_baltic_governorates` | `[unregistered]` |
| Added | `glossary_annexation_baltic_governorates_desc` | `[unregistered]` |
| Added | `glossary_annexation_of_finland` | `[unregistered]` |
| Added | `glossary_annexation_of_finland_desc` | `[unregistered]` |
| Added | `glossary_boddhisattva` | `[unregistered]` |
| Added | `glossary_boddhisattva_desc` | `[unregistered]` |
| Added | `glossary_decembrists` | `[unregistered]` |
| Added | `glossary_decembrists_desc` | `[unregistered]` |
| Added | `glossary_establishment_of_congress_poland` | `[unregistered]` |
| Added | `glossary_establishment_of_congress_poland_desc` | `[unregistered]` |
| Added | `glossary_gongen` | `[unregistered]` |
| Added | `glossary_gongen_desc` | `[unregistered]` |
| Added | `glossary_house_of_karadjordjevic` | `[unregistered]` |
| Added | `glossary_house_of_karadjordjevic_desc` | `[unregistered]` |
| Added | `glossary_house_of_obrenovic` | `[unregistered]` |
| Added | `glossary_house_of_obrenovic_desc` | `[unregistered]` |
| Added | `glossary_november_uprising` | `[unregistered]` |
| Added | `glossary_november_uprising_desc` | `[unregistered]` |
| Added | `glossary_peredvizhniki_artists` | `[unregistered]` |
| Added | `glossary_peredvizhniki_artists_desc` | `[unregistered]` |
| Added | `glossary_pochvennichestvo` | `[unregistered]` |
| Added | `glossary_pochvennichestvo_desc` | `[unregistered]` |
| Added | `glossary_revolutions_of_1830` | `[unregistered]` |
| Added | `glossary_revolutions_of_1830_desc` | `[unregistered]` |
| Added | `glossary_ri` | `[unregistered]` |
| Added | `glossary_ri_desc` | `[unregistered]` |
| Added | `glossary_sejm` | `[unregistered]` |
| Added | `glossary_sejm_desc` | `[unregistered]` |
| Added | `glossary_silver_age` | `[unregistered]` |
| Added | `glossary_silver_age_desc` | `[unregistered]` |
| Added | `glossary_third_partition` | `[unregistered]` |
| Added | `glossary_third_partition_desc` | `[unregistered]` |
| Added | `glossary_tomas_de_zumalacarregui` | `[unregistered]` |
| Added | `glossary_tomas_de_zumalacarregui_desc` | `[unregistered]` |
| Added | `glossary_uchikowashi` | `[unregistered]` |
| Added | `glossary_uchikowashi_desc` | `[unregistered]` |
| Added | `glossary_zaibatsu` | `[unregistered]` |
| Added | `glossary_zaibatsu_desc` | `[unregistered]` |
| Added | `glossary_zemstvo` | `[unregistered]` |
| Added | `glossary_zemstvo_desc` | `[unregistered]` |
| Removed | `concept_bio_tomas_de_zumalacarregui` | `[unregistered]` |
| Removed | `concept_bio_tomas_de_zumalacarregui_desc` | `[unregistered]` |
| Removed | `concept_boddhisattva` | `[unregistered]` |
| Removed | `concept_boddhisattva_desc` | `[unregistered]` |
| Removed | `concept_gongen` | `[unregistered]` |
| Removed | `concept_gongen_desc` | `[unregistered]` |
| Removed | `concept_house_of_karadjordjevic` | `[unregistered]` |
| Removed | `concept_house_of_karadjordjevic_desc` | `[unregistered]` |
| Removed | `concept_house_of_obrenovic` | `[unregistered]` |
| Removed | `concept_house_of_obrenovic_desc` | `[unregistered]` |
| Removed | `concept_war_exhaustion` | `[unregistered]` |
| Removed | `concept_war_exhaustion_desc` | `[unregistered]` |
| Removed | `concept_zaibatsu` | `[unregistered]` |
| Removed | `concept_zaibatsu_desc` | `[unregistered]` |


## Global Promotes
| Type | Promote | Return Type |
|--|--|--|
| Added | `AIREGIONAL_OBJECTIVE` | `` |
| Added | `AIREGIONAL_OBJECTIVE` | `` |
| Added | `AIREGIONAL_OBJECTIVE_TYPE` | `` |
| Added | `AIREGIONAL_OBJECTIVE_TYPE` | `` |
| Added | `CONCLUDED_JOURNAL_ENTRY` | `` |
| Added | `CONCLUDED_JOURNAL_ENTRY` | `` |
| Added | `GLOSSARY_TYPE` | `` |
| Added | `GLOSSARY_TYPE` | `` |
| Added | `JOURNAL_ENTRY_OUTCOME` | `` |
| Added | `JOURNAL_ENTRY_OUTCOME` | `` |
| Added | `MusicPlayer` | `` |
| Added | `MusicPlayer` | `` |
| Added | `REGIONAL_EXILE_POOL` | `` |
| Added | `REGIONAL_EXILE_POOL` | `` |
| Added | `SCALING_MODIFIER` | `` |
| Added | `SCALING_MODIFIER` | `` |
| Added | `TARGET_AIREGIONAL_OBJECTIVE` | `` |
| Added | `TARGET_AIREGIONAL_OBJECTIVE` | `` |
| Added | `TARGET_AIREGIONAL_OBJECTIVE_TYPE` | `` |
| Added | `TARGET_AIREGIONAL_OBJECTIVE_TYPE` | `` |
| Added | `TARGET_CONCLUDED_JOURNAL_ENTRY` | `` |
| Added | `TARGET_CONCLUDED_JOURNAL_ENTRY` | `` |
| Added | `TARGET_GLOSSARY_TYPE` | `` |
| Added | `TARGET_GLOSSARY_TYPE` | `` |
| Added | `TARGET_JOURNAL_ENTRY_OUTCOME` | `` |
| Added | `TARGET_JOURNAL_ENTRY_OUTCOME` | `` |
| Added | `TARGET_REGIONAL_EXILE_POOL` | `` |
| Added | `TARGET_REGIONAL_EXILE_POOL` | `` |
| Added | `TARGET_SCALING_MODIFIER` | `` |
| Added | `TARGET_SCALING_MODIFIER` | `` |

