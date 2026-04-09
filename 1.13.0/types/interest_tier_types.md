Defines contiguous involvement tiers used by the game to classify a value (fixed-point) into a single tier.

Fields
- icon: Texture path. Standard/large icon for this tier (used in detailed or large UI contexts).
- small_icon: Texture path. Small icon for compact UI contexts and tag tooltips. Used by InterestTierType.GetName.
- rank: Integer. Order of the tier; must be 0,1..n with no gaps or duplicates.
- min_involvement: Fixed-point. Inclusive lower bound of the tier.
- max_involvement: Fixed-point. Exclusive upper bound for all tiers except the last, which is inclusive.
- state_modifier: Optional modifier applied to each state in the strategic region when this tier is active.
- colonization: <yes/no> If yes, the country can colonize states in this strategic region when this tier is active. Default no.
- on_activate: Optional effect block executed when this tier becomes active (after leaving the previous tier).
- on_deactivate: Optional effect block executed when this tier is left (before activating the next tier).

Execution order on tier change
1) Previous tier: on_deactivate (if present)
2) New tier: on_activate (if present)

Effect scopes
- ROOT (this): Country that owns the interest.
- Event target target_region: The strategic region of the interest.
- Random seed is set for deterministic effects per change.

Defaults
- state_modifier: none
- colonization: no
- on_activate/on_deactivate: none (no-op if omitted)

Rules
- Tiered involvement ranges in the strategic region.
- Validation expects contiguous ranges: previous.max == current.min.
- Half-open intervals [min, max), except the last [min, max].

Example
interest_tier_none = {
  icon = "gfx/interface/icons/tiered_interests/interest_levels_icons/interest_level_0_none.dds"
  small_icon = "gfx/interface/icons/tiered_interests/interest_levels_icons/interest_level_0_none.dds"
  rank = 0
  min_involvement = 0
  max_involvement = 1000
}

interest_tier_low = {
  icon = "gfx/interface/icons/tiered_interests/interest_levels_icons/interest_level_2_engaged.dds"
  small_icon = "gfx/interface/icons/tiered_interests/interest_levels_icons/interest_level_2_engaged.dds"
  rank = 2
  min_involvement = 1000
  max_involvement = 4000
  state_modifier = { state_infrastructure_add = 2 }
  on_activate = {
    # ROOT is the Country; target_region is the Strategic Region
    # add_country_modifier = { modifier = interest_tier_low_active duration = 365 }
  }
  on_deactivate = {
    # remove_country_modifier = interest_tier_low_active
  }
}

interest_tier_high = {
  icon = "gfx/interface/icons/tiered_interests/interest_levels_icons/interest_level_4_pervasive.dds"
  small_icon = "gfx/interface/icons/tiered_interests/interest_levels_icons/interest_level_4_pervasive.dds"
  rank = 4
  min_involvement = 4000
  max_involvement = 10000
  state_modifier = { state_infrastructure_add = 5 }
  colonization = yes
  on_activate = {
    # scope:target_region = { add_temporary_state_modifier = { modifier = interest_high_region_boost duration = 180 } }
  }
  on_deactivate = {
    # scope:target_region = { remove_state_modifier = interest_high_region_boost }
  }
}