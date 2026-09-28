# Example
veterancy_key = {
	icon = "gfx/interface/icons/military_icons/unit_veterancy/veterancy1.dds"
	experience_threshold = 100
	modifier = {
        ship_readiness_gain_mult = 0.05
        ship_hull_damage_mult = 0.05
	}
}

## icon
Path to icon texture

## experience_threshold
Defaults to 0. Needs to be >= 0. No duplicates allowed. For a unit to be this level, it needs to be above this amount of experience. This is what determines the order level. If two levels require 100 and 200 experience respectively, they will be in that order as well. One of the defined levels needs to have 0 as its experience threshold (either explicitly or by not defining this property) to be classified as the starting level.

## modifier
Modifier block, empty by default. Only accepts ship_ modifiers.