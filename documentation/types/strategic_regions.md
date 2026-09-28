Each state must be part of one and only one stategic region.
Every strategic region needs a capital and colour defined.

	strategic_region_name = {
		capital_province = province_id	# The province ID for the capital of the state, determines where the UI panel for the interest markers present appears
		map_color = { R% G% B% }		# The percentage of R G B colour for this region for the diplomatic map mode
		states = { state_key_list }		# The states included in this strategic region specified by key

		diorama_radius_multiplier = 1.5				# Optional: multiplier for BATTLE_DIORAMA_RADIUS_DEFAULT (default: 1.0)
		diorama_center_offset = { 5.0 3.0 }			# Optional: offset applied to the naval battle diorama center (default: { 0 0 })
	}