# Data Type Documentation 1.13.0
## Table of Contents
 * [Types](#types)
 * [Global Promotes](#global-promotes)
## Notes
This is just a very basic overview of added and removed data types.

Changed elements are **not** mentioned here.
## Types
| Type | Data Type |
|--|--|
| Added | `AIStrategicRegionStanceType` |
| Added | `BattleLogEntry` |
| Added | `CharacterPanel` |
| Added | `CharacterRole` |
| Added | `CombatShip` |
| Added | `FleetFormationMarker` |
| Added | `InterestTierType` |
| Added | `MapListNavalMissionOption` |
| Added | `MapListNavalMissionPanel` |
| Added | `MilitaryFormationWrapped` |
| Added | `NavalBattle` |
| Added | `NavalBattleCondition` |
| Added | `NavalBattleMarker` |
| Added | `NavalBattlePanel` |
| Added | `NavalBattleParticipant` |
| Added | `NavalBattleShipTemplateGroup` |
| Added | `NavalBattleSide` |
| Added | `NavalMission` |
| Added | `NavalMissionMarker` |
| Added | `NavalMissionType` |
| Added | `PastNavalBattleMarker` |
| Added | `Ship` |
| Added | `ShipChangeNamePopup` |
| Added | `ShipConstruction` |
| Added | `ShipConstructionQueue` |
| Added | `ShipCostPoint` |
| Added | `ShipDesignerModSlot` |
| Added | `ShipDesignerPopup` |
| Added | `ShipFilter` |
| Added | `ShipGraphicsType` |
| Added | `ShipGroup` |
| Added | `ShipList` |
| Added | `ShipModificationSlotType` |
| Added | `ShipModificationType` |
| Added | `ShipPanel` |
| Added | `ShipSelection` |
| Added | `ShipTemplate` |
| Added | `ShipTemplateList` |
| Added | `ShipTemplateVersion` |
| Added | `ShipType` |
| Added | `ShipViewer` |
| Added | `StagedShipsWithType` |
| Added | `Strait` |
| Added | `StraitDefinition` |
| Added | `StraitMarker` |
| Added | `StraitPanel` |
| Added | `StrategicRegionPanel` |
| Added | `SupplyShipConstruction` |
| Added | `TransportPlannerPopup` |
| Added | `TreatyShipFilter` |
| Added | `TreatyShipFilterList` |
| Removed | `BattleParticipantsPanel` |  |
| Removed | `CanalType` |  |
| Removed | `CommanderPanel` |  |
| Removed | `StagedCommanderTransfer` |  |

## Global Promotes
| Type | Promote | Return Type |
|--|--|--|
| Added | `Concatenate3( Arg0, Arg1, Arg2 )` | `CString` |
| Added | `Concatenate4( Arg0, Arg1, Arg2, Arg3 )` | `CString` |
| Added | `Concatenate5( Arg0, Arg1, Arg2, Arg3, Arg4 )` | `CString` |
| Added | `Concatenate6( Arg0, Arg1, Arg2, Arg3, Arg4, Arg5 )` | `CString` |
| Added | `Concatenate7( Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6 )` | `CString` |
| Added | `Concatenate8( Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7 )` | `CString` |
| Added | `AISTRATEGIC_REGION_STANCE_TYPE` | `AIStrategicRegionStanceType` |
| Added | `CHARACTER_ROLE` | `CharacterRole` |
| Added | `COMBAT_SHIP` | `CombatShip` |
| Added | `GetCharacterRole( Arg0 )` | `CharacterRole` |
| Added | `GetInterestTierType( Arg0 )` | `InterestTierType` |
| Added | `GetMapPerspectiveCountry` | `Country` |
| Added | `GetNavalBattleCondition( Arg0 )` | `NavalBattleCondition` |
| Added | `GetNavalMissionType( Arg0 )` | `NavalMissionType` |
| Added | `GetSelectedFleetsNavalMissionType` | `NavalMissionType` |
| Added | `GetShipGroup( Arg0 )` | `ShipGroup` |
| Added | `GetShipModificationSlotType( Arg0 )` | `ShipModificationSlotType` |
| Added | `GetShipModificationType( Arg0 )` | `ShipModificationType` |
| Added | `GetShipPanel` | `ShipPanel` |
| Added | `GetShipType( Arg0 )` | `ShipType` |
| Added | `INTEREST_TIER_TYPE` | `InterestTierType` |
| Added | `NAVAL_BATTLE` | `NavalBattle` |
| Added | `NAVAL_BATTLE_CONDITION` | `NavalBattleCondition` |
| Added | `NAVAL_BATTLE_LOG_ENTRY` | `BattleLogEntry` |
| Added | `NAVAL_MISSION` | `NavalMission` |
| Added | `NAVAL_MISSION_TYPE` | `NavalMissionType` |
| Added | `SHIP` | `Ship` |
| Added | `SHIP_CONSTRUCTION` | `ShipConstruction` |
| Added | `SHIP_CONSTRUCTION_QUEUE` | `ShipConstructionQueue` |
| Added | `SHIP_GROUP` | `ShipGroup` |
| Added | `SHIP_LIST` | `ShipList` |
| Added | `SHIP_MODIFICATION_SLOT_TYPE` | `ShipModificationSlotType` |
| Added | `SHIP_MODIFICATION_TYPE` | `ShipModificationType` |
| Added | `SHIP_TEMPLATE` | `ShipTemplate` |
| Added | `SHIP_TEMPLATE_VERSION` | `ShipTemplateVersion` |
| Added | `SHIP_TYPE` | `ShipType` |
| Added | `STRAIT` | `Strait` |
| Added | `STRAIT_DEFINITION` | `StraitDefinition` |
| Added | `SUPPLY_SHIP_CONSTRUCTION` | `SupplyShipConstruction` |
| Added | `ShipTemplateList` | `ShipTemplateList` |
| Added | `TARGET_AISTRATEGIC_REGION_STANCE_TYPE` | `AIStrategicRegionStanceType` |
| Added | `TARGET_CHARACTER_ROLE` | `CharacterRole` |
| Added | `TARGET_COMBAT_SHIP` | `CombatShip` |
| Added | `TARGET_INTEREST_TIER_TYPE` | `InterestTierType` |
| Added | `TARGET_NAVAL_BATTLE` | `NavalBattle` |
| Added | `TARGET_NAVAL_BATTLE_CONDITION` | `NavalBattleCondition` |
| Added | `TARGET_NAVAL_BATTLE_LOG_ENTRY` | `BattleLogEntry` |
| Added | `TARGET_NAVAL_MISSION` | `NavalMission` |
| Added | `TARGET_NAVAL_MISSION_TYPE` | `NavalMissionType` |
| Added | `TARGET_SHIP` | `Ship` |
| Added | `TARGET_SHIP_CONSTRUCTION` | `ShipConstruction` |
| Added | `TARGET_SHIP_CONSTRUCTION_QUEUE` | `ShipConstructionQueue` |
| Added | `TARGET_SHIP_GROUP` | `ShipGroup` |
| Added | `TARGET_SHIP_LIST` | `ShipList` |
| Added | `TARGET_SHIP_MODIFICATION_SLOT_TYPE` | `ShipModificationSlotType` |
| Added | `TARGET_SHIP_MODIFICATION_TYPE` | `ShipModificationType` |
| Added | `TARGET_SHIP_TEMPLATE` | `ShipTemplate` |
| Added | `TARGET_SHIP_TEMPLATE_VERSION` | `ShipTemplateVersion` |
| Added | `TARGET_SHIP_TYPE` | `ShipType` |
| Added | `TARGET_STRAIT` | `Strait` |
| Added | `TARGET_STRAIT_DEFINITION` | `StraitDefinition` |
| Added | `TARGET_SUPPLY_SHIP_CONSTRUCTION` | `SupplyShipConstruction` |
| Added | `CanEditSeaRegionsForSelectedFleets` | `bool` |
| Added | `CancelRetrofitShips` | `Command` |
| Added | `CreateNavalMissionsForSelectedFleets( Arg0 )` | `Command` |
| Added | `GetCanEditMissionSeaRegionsForSelectedFleetsDesc` | `CString` |
| Added | `GetCharacterRole( Arg0 )` | `[unregistered]` |
| Added | `GetInterestTierType( Arg0 )` | `[unregistered]` |
| Added | `GetInterestTierTypes` | `[unregistered]` |
| Added | `GetInterestTierTypesDesc` | `CString` |
| Added | `GetMapPerspectiveCountry` | `[unregistered]` |
| Added | `GetNavalBattleCondition( Arg0 )` | `[unregistered]` |
| Added | `GetNavalMissionType( Arg0 )` | `[unregistered]` |
| Added | `GetNavalMissionTypes` | `[unregistered]` |
| Added | `GetNumberOfSelectedFleetsDifferentNavalMissionTypes` | `int32` |
| Added | `GetSelectedFleetsMissionRegionsDesc` | `CString` |
| Added | `GetSelectedFleetsNavalMissionType` | `[unregistered]` |
| Added | `GetSelectedFleetsPotentialAndPossibleMissions` | `[unregistered]` |
| Added | `GetShipGroup( Arg0 )` | `[unregistered]` |
| Added | `GetShipGroups` | `[unregistered]` |
| Added | `GetShipModificationSlotType( Arg0 )` | `[unregistered]` |
| Added | `GetShipModificationType( Arg0 )` | `[unregistered]` |
| Added | `GetShipType( Arg0 )` | `[unregistered]` |
| Added | `GetShipTypes` | `[unregistered]` |
| Added | `NoSelectedFleetsHaveNavalMissions` | `bool` |
| Added | `OnEditSelectedFleetsSeaRegionsClicked` | `void` |
| Added | `RemoveNavalMissionForSelectedFleets( Arg0 )` | `Command` |
| Added | `RemoveSelectedFleetsMissions` | `Command` |
| Added | `RetrofitShips` | `Command` |
| Added | `RetrofitShipsAndStation` | `Command` |
| Added | `SelectedFleetsHaveEquivalentNavalMissionAreas` | `bool` |
| Added | `SelectedFleetsHaveNavalMissionType( Arg0 )` | `bool` |
| Added | `SelectedFleetsHaveTheSameNavalMissionType` | `bool` |
| Added | `concept_accuracy` | `[unregistered]` |
| Added | `concept_accuracy_desc` | `[unregistered]` |
| Added | `concept_attack_damage` | `[unregistered]` |
| Added | `concept_attack_damage_desc` | `[unregistered]` |
| Added | `concept_base_template` | `[unregistered]` |
| Added | `concept_base_template_desc` | `[unregistered]` |
| Added | `concept_blockade_strength` | `[unregistered]` |
| Added | `concept_blockade_strength_desc` | `[unregistered]` |
| Added | `concept_budget_goods_for_military_upkeep` | `[unregistered]` |
| Added | `concept_budget_goods_for_military_upkeep_desc` | `[unregistered]` |
| Added | `concept_carrying_capacity` | `[unregistered]` |
| Added | `concept_carrying_capacity_desc` | `[unregistered]` |
| Added | `concept_crew_attack_damage` | `[unregistered]` |
| Added | `concept_crew_attack_damage_desc` | `[unregistered]` |
| Added | `concept_crew_casualties` | `[unregistered]` |
| Added | `concept_crew_casualties_desc` | `[unregistered]` |
| Added | `concept_critical_hit_chance` | `[unregistered]` |
| Added | `concept_critical_hit_chance_desc` | `[unregistered]` |
| Added | `concept_critical_hit_multiplier` | `[unregistered]` |
| Added | `concept_critical_hit_multiplier_desc` | `[unregistered]` |
| Added | `concept_detection` | `[unregistered]` |
| Added | `concept_detection_desc` | `[unregistered]` |
| Added | `concept_flagship` | `[unregistered]` |
| Added | `concept_flagship_desc` | `[unregistered]` |
| Added | `concept_fleet_hit_points` | `[unregistered]` |
| Added | `concept_fleet_hit_points_desc` | `[unregistered]` |
| Added | `concept_holding` | `[unregistered]` |
| Added | `concept_holding_desc` | `[unregistered]` |
| Added | `concept_home_state` | `[unregistered]` |
| Added | `concept_home_state_desc` | `[unregistered]` |
| Added | `concept_hull_attack_damage` | `[unregistered]` |
| Added | `concept_hull_attack_damage_desc` | `[unregistered]` |
| Added | `concept_interest_tier` | `[unregistered]` |
| Added | `concept_interest_tier_desc` | `[unregistered]` |
| Added | `concept_involvement` | `[unregistered]` |
| Added | `concept_involvement_desc` | `[unregistered]` |
| Added | `concept_japanese_emperor` | `[unregistered]` |
| Added | `concept_japanese_emperor_desc` | `[unregistered]` |
| Added | `concept_local_country` | `[unregistered]` |
| Added | `concept_local_country_desc` | `[unregistered]` |
| Added | `concept_locality` | `[unregistered]` |
| Added | `concept_locality_desc` | `[unregistered]` |
| Added | `concept_loyalty` | `[unregistered]` |
| Added | `concept_loyalty_desc` | `[unregistered]` |
| Added | `concept_magnate` | `[unregistered]` |
| Added | `concept_magnate_desc` | `[unregistered]` |
| Added | `concept_marine_capacity` | `[unregistered]` |
| Added | `concept_marine_capacity_desc` | `[unregistered]` |
| Added | `concept_mission_efficiency` | `[unregistered]` |
| Added | `concept_mission_efficiency_desc` | `[unregistered]` |
| Added | `concept_naval_battle` | `[unregistered]` |
| Added | `concept_naval_battle_condition` | `[unregistered]` |
| Added | `concept_naval_battle_condition_desc` | `[unregistered]` |
| Added | `concept_naval_battle_desc` | `[unregistered]` |
| Added | `concept_naval_hostilities` | `[unregistered]` |
| Added | `concept_naval_hostilities_desc` | `[unregistered]` |
| Added | `concept_naval_mission` | `[unregistered]` |
| Added | `concept_naval_mission_area_limit` | `[unregistered]` |
| Added | `concept_naval_mission_area_limit_desc` | `[unregistered]` |
| Added | `concept_naval_mission_desc` | `[unregistered]` |
| Added | `concept_piracy` | `[unregistered]` |
| Added | `concept_piracy_desc` | `[unregistered]` |
| Added | `concept_prominence` | `[unregistered]` |
| Added | `concept_prominence_desc` | `[unregistered]` |
| Added | `concept_readiness` | `[unregistered]` |
| Added | `concept_readiness_desc` | `[unregistered]` |
| Added | `concept_sailor` | `[unregistered]` |
| Added | `concept_sailor_desc` | `[unregistered]` |
| Added | `concept_screening` | `[unregistered]` |
| Added | `concept_screening_desc` | `[unregistered]` |
| Added | `concept_ship` | `[unregistered]` |
| Added | `concept_ship_armor` | `[unregistered]` |
| Added | `concept_ship_armor_desc` | `[unregistered]` |
| Added | `concept_ship_complexity` | `[unregistered]` |
| Added | `concept_ship_complexity_desc` | `[unregistered]` |
| Added | `concept_ship_construction` | `[unregistered]` |
| Added | `concept_ship_construction_capacity` | `[unregistered]` |
| Added | `concept_ship_construction_capacity_desc` | `[unregistered]` |
| Added | `concept_ship_construction_desc` | `[unregistered]` |
| Added | `concept_ship_construction_queue` | `[unregistered]` |
| Added | `concept_ship_construction_queue_desc` | `[unregistered]` |
| Added | `concept_ship_crew` | `[unregistered]` |
| Added | `concept_ship_crew_desc` | `[unregistered]` |
| Added | `concept_ship_desc` | `[unregistered]` |
| Added | `concept_ship_group` | `[unregistered]` |
| Added | `concept_ship_group_desc` | `[unregistered]` |
| Added | `concept_ship_hit_points` | `[unregistered]` |
| Added | `concept_ship_hit_points_desc` | `[unregistered]` |
| Added | `concept_ship_modification` | `[unregistered]` |
| Added | `concept_ship_modification_desc` | `[unregistered]` |
| Added | `concept_ship_retrofit` | `[unregistered]` |
| Added | `concept_ship_retrofit_desc` | `[unregistered]` |
| Added | `concept_ship_speed` | `[unregistered]` |
| Added | `concept_ship_speed_desc` | `[unregistered]` |
| Added | `concept_ship_template` | `[unregistered]` |
| Added | `concept_ship_template_desc` | `[unregistered]` |
| Added | `concept_ship_type` | `[unregistered]` |
| Added | `concept_ship_type_desc` | `[unregistered]` |
| Added | `concept_ship_under_construction` | `[unregistered]` |
| Added | `concept_ship_under_construction_desc` | `[unregistered]` |
| Added | `concept_ship_upkeep` | `[unregistered]` |
| Added | `concept_ship_upkeep_desc` | `[unregistered]` |
| Added | `concept_strait` | `[unregistered]` |
| Added | `concept_strait_access` | `[unregistered]` |
| Added | `concept_strait_access_desc` | `[unregistered]` |
| Added | `concept_strait_allowed_countries` | `[unregistered]` |
| Added | `concept_strait_allowed_countries_desc` | `[unregistered]` |
| Added | `concept_strait_control` | `[unregistered]` |
| Added | `concept_strait_control_desc` | `[unregistered]` |
| Added | `concept_strait_desc` | `[unregistered]` |
| Added | `concept_strategic_region_stance` | `[unregistered]` |
| Added | `concept_strategic_region_stance_desc` | `[unregistered]` |
| Added | `concept_sunk_ships` | `[unregistered]` |
| Added | `concept_sunk_ships_desc` | `[unregistered]` |
| Added | `concept_supply_capacity` | `[unregistered]` |
| Added | `concept_supply_capacity_desc` | `[unregistered]` |
| Added | `concept_supply_efficiency` | `[unregistered]` |
| Added | `concept_supply_efficiency_desc` | `[unregistered]` |
| Added | `concept_supply_priority` | `[unregistered]` |
| Added | `concept_supply_priority_desc` | `[unregistered]` |
| Added | `concept_supply_ship` | `[unregistered]` |
| Added | `concept_supply_ship_desc` | `[unregistered]` |
| Added | `concept_tolls` | `[unregistered]` |
| Added | `concept_tolls_desc` | `[unregistered]` |
| Added | `concept_visibility` | `[unregistered]` |
| Added | `concept_visibility_desc` | `[unregistered]` |
| Added | `concept_vulnerability` | `[unregistered]` |
| Added | `concept_vulnerability_desc` | `[unregistered]` |
| Added | `concept_withdrawn_ships` | `[unregistered]` |
| Added | `concept_withdrawn_ships_desc` | `[unregistered]` |
| Added | `concept_zaibatsu` | `[unregistered]` |
| Added | `concept_zaibatsu_desc` | `[unregistered]` |
| Removed | `CANAL_TYPE` | `CanalType` |
| Removed | `TARGET_CANAL_TYPE` | `CanalType` |
| Removed | `GetFlotillaGroupsList` | `CString` |
| Removed | `GetGlobalMaxNavalDefense` | `CFixedPoint` |
| Removed | `GetGlobalMaxNavalOffense` | `CFixedPoint` |
| Removed | `concept_active_interest` | `[unregistered]` |
| Removed | `concept_active_interest_desc` | `[unregistered]` |
| Removed | `concept_budget_goods_for_military_buildings` | `[unregistered]` |
| Removed | `concept_budget_goods_for_military_buildings_desc` | `[unregistered]` |
| Removed | `concept_convoy_cost` | `[unregistered]` |
| Removed | `concept_convoy_cost_desc` | `[unregistered]` |
| Removed | `concept_convoys` | `[unregistered]` |
| Removed | `concept_convoys_desc` | `[unregistered]` |
| Removed | `concept_declared_interest` | `[unregistered]` |
| Removed | `concept_declared_interest_desc` | `[unregistered]` |
| Removed | `concept_flotilla` | `[unregistered]` |
| Removed | `concept_flotilla_desc` | `[unregistered]` |
| Removed | `concept_georegion_africa` | `[unregistered]` |
| Removed | `concept_georegion_africa_desc` | `[unregistered]` |
| Removed | `concept_georegion_americas` | `[unregistered]` |
| Removed | `concept_georegion_americas_desc` | `[unregistered]` |
| Removed | `concept_georegion_balkans` | `[unregistered]` |
| Removed | `concept_georegion_balkans_desc` | `[unregistered]` |
| Removed | `concept_georegion_central_america` | `[unregistered]` |
| Removed | `concept_georegion_central_america_desc` | `[unregistered]` |
| Removed | `concept_georegion_central_asia` | `[unregistered]` |
| Removed | `concept_georegion_central_asia_desc` | `[unregistered]` |
| Removed | `concept_georegion_china` | `[unregistered]` |
| Removed | `concept_georegion_china_desc` | `[unregistered]` |
| Removed | `concept_georegion_east_asia` | `[unregistered]` |
| Removed | `concept_georegion_east_asia_desc` | `[unregistered]` |
| Removed | `concept_georegion_europe` | `[unregistered]` |
| Removed | `concept_georegion_europe_desc` | `[unregistered]` |
| Removed | `concept_georegion_india` | `[unregistered]` |
| Removed | `concept_georegion_india_desc` | `[unregistered]` |
| Removed | `concept_georegion_middle_east` | `[unregistered]` |
| Removed | `concept_georegion_middle_east_desc` | `[unregistered]` |
| Removed | `concept_georegion_north_africa` | `[unregistered]` |
| Removed | `concept_georegion_north_africa_desc` | `[unregistered]` |
| Removed | `concept_georegion_north_america` | `[unregistered]` |
| Removed | `concept_georegion_north_america_desc` | `[unregistered]` |
| Removed | `concept_georegion_south_africa` | `[unregistered]` |
| Removed | `concept_georegion_south_africa_desc` | `[unregistered]` |
| Removed | `concept_georegion_south_america` | `[unregistered]` |
| Removed | `concept_georegion_south_america_desc` | `[unregistered]` |
| Removed | `concept_georegion_southeast_asia` | `[unregistered]` |
| Removed | `concept_georegion_southeast_asia_desc` | `[unregistered]` |
| Removed | `concept_georegion_subsaharan_africa` | `[unregistered]` |
| Removed | `concept_georegion_subsaharan_africa_desc` | `[unregistered]` |
| Removed | `concept_inactive_interest` | `[unregistered]` |
| Removed | `concept_inactive_interest_desc` | `[unregistered]` |

