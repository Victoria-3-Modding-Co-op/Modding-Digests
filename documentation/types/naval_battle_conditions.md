naval_battle_condition_type_key = {
	icon = "path/to/icon"

    # trigger for if this battle condition is possible at all
	possible = {
		always = yes
	}

    # the weight this condition has compared to other conditions to be selected for a battle
    # fixed point
	weight = {
		value = 1
	}

    # how much periodic hull damage this condition deals at 1 intensity
    # fixed point
	max_hull_damage = {
		value = 30
	}

    # how much periodic crew damage this condition deals at 1 intensity
    # fixed point
	max_crew_damage = {
		value = 10
	}

    # how often this condition will deal periodic damage in a naval battle. value = 1 means every turn, 2 every other turn, etc. 0 means never.
	period = {
		value = 3
	}

    # scaling factor against the max crew/hull damage, also determines how likely each individual ship is to be targeted
	intensity = {
		value = 0.75
	}

    # modifier applied by the condition to the battle, ships, commanders, etc
	modifier = {
	}
}

## Scopes
For all script values and the possible trigger the following scopes are available:
- Root (Battle)
- region - the state region the battle is in
- attacker - the lead attacking country
- defender - the lead defending country
- attacker_commander
- defender_commander