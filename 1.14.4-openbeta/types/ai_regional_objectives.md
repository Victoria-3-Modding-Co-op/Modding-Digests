### root = the AI country
### scope:target_region = the strategic region the objective applies to
### scope:target_stance = the regional stance being drawn for
ai_regional_objective_type_key = {
	stances = { stance_key ... }								# Which regional stances this objective may be drawn for.
	possible = { <trigger> }									# Whether this objective may be drawn at all.
	complete = { <trigger> }									# Whether the objective has been achieved.
	on_create = { <effect> }									# Runs once when the objective is created.
	on_complete = { <effect> }									# Runs once when the objective completes, before it is discarded.
	weight = <script value>										# Relative weight.
}
