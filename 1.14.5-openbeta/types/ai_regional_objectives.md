### root = the AI country
### scope:target_region = the strategic region the objective applies to
### scope:target_stance = the regional stance being drawn for
ai_regional_objective_type_key = {
	stances = { stance_key ... }								# Which regional stances this objective may be drawn for.
	possible = { <trigger> }									# Whether this objective may be drawn at all.
	complete = { <trigger> }									# Whether the objective has been achieved. Will throw an error if empty.
	invalid = { <trigger> }										# Whether the objective can no longer be achieved. Checked after complete. IF EMPTY IT'S ALWAYS FALSE.
	on_create = { <effect> }									# Runs once when the objective is created.
	on_complete = { <effect> }									# Runs once when the objective completes. The objective is kept, marked completed.
	on_invalid = { <effect> }									# Runs once when the objective fails: either the invalid trigger fired, or the
																# stance it was rolled under changed and the objective was abandoned.
																# Put teardown for anything on_create stored here as well as in on_complete.
	weight = <script value>										# Relative weight.
}
