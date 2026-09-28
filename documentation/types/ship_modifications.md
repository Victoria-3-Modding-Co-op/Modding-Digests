ship_modification_key = {
	modifier = { modifier }

	# Which slot this modification uses
	type = <ship modification slot>

	# Goods cost modification for a ship when building/retrofitting
	construction_goods = { modifier }

	# Goods cost modification for a ship when consuming materiel
	materiel_goods = { modifier }

	# [Optional] Required technologies to construct the ship type. If multiple entries are specified, either one of them is required
    unlocking_technologies = { <technology_key> ... }

	# [Default = 1] How important is this ship type to build for AI
	# root - country
	ai_weight = fixed_point
}
