# Notes

## Kind, type, settings?
A war goal type is a war goal as defined in script (e.g. the contents of 00_annex_country.txt). The Kind of the war goal defines the code-side predefined package of behavior that war goal will have, primarily defining what effect the war goal has when executed. Settings further customize how the war goal is treated in different checks. A war goal can only have one kind, but multiple settings.

# Reference

```
some_war_goal = {
	icon = "gfx/interface/icons/war_goals/icon.dds"

	kind = war_goal_kind

	subject_type = subject_type_key  # only used by kind = make_subject and kind = release_as_subject

	settings = {
        setting_1
        setting_2
	}

	execution_priority = 80

	contestion_type = control_type

	side_switch = never

	target_type = target_type

	fill_per_week = 5			# The progress made towards auto-enforcing this war goal each week, if occupied
	deplete_per_week = 5		# The progress lost towards auto-enforcing this war goal each week, if not occupied

	mirrored_wargoal = {
		method = territorial	# See further down in file for details on method
		# type = war_goal_type_key  # only used by method = swap
	}

	possible = {
		# trigger to determine if a goal with its target data is listed when selecting a war goal in the diplo play panel
		# scopes: root = holder, creator_country, diplomatic_play, target_country, target_state, stakeholder, target_region, article_options
	}

	valid = {
		# trigger in addition to some basic validation code-side
		# scopes: root = holder, creator_country, diplomatic_play, target_country, target_state, stakeholder, target_region, article_options
	}

	maneuvers = {
		# script value
		# scopes: root = holder, creator_country, diplomatic_play, target_country, target_state, stakeholder, target_region, article_options
		value = 10
	}
	
	infamy = {
		# script value
		# scopes: root = holder, creator_country, diplomatic_play, target_country, target_state, stakeholder, target_region, article_options
		value = 15
	}

	on_enforced = {
		# script effect on top of the predefined code effect
		# scopes: root = holder, creator_country, diplomatic_play, target_country, target_state, stakeholder, target_region, article_options
	}

	ai = {
		is_significant_demand = yes
	}
}
```

# Instructions

## Icon
The path to the icon the war goal should use. Typically something from `gfx/interface/icons/war_goals/`

## Kind
The primary predefined package of behavior code will associate with this war goal. Primarily this defines the execution effects of the war goal, but it also implies some other checks in different parts of code required for the functioning of the effects.

## Subject Type
Only used by `kind = make_subject` and `kind = release_as_subject`. The key of the subject type (see common/subject_types) the target is turned into when the war goal is enforced. Required for `make_subject` war goals. For `release_as_subject` it is only a fallback: the goal restores the relationship the released country actually held when the mirror captured it before annexation, and falls back to the most autonomous relationship reachable from this key when it could not.

### List of Kinds
- annex_country
- ban_slavery
	Converted to law commitment treaty article for slavery banned
- colonization_rights
- conquer_state
- contain_threat
- enforce_treaty_article
- force_nationalization
- foreign_investment_rights
	Converted to investment rights article
- humiliation
- increase_autonomy
- independence
- join_power_bloc
- leave_power_bloc
- liberate_country
- liberate_subject
- make_subject
	Turns the target into a subject of the given `subject_type` (see below). Used for protectorates, tributaries, dominions, personal unions, crown land and chartered companies.
- open_market
- reduce_autonomy
- regime_change
- return_state
- revoke_all_claims
- revoke_claim
- secession
- take_treaty_port
	Converted to treaty port treaty article
- transfer_subject
- unification
- unification_leadership
- custom
	No predefined effect. In case you only want to execute the on_enforced effect, but nothing else.

## Settings
Settings define smaller behaviors or checks that a war goal might want to have. Some settings are safe to remove (e.g. for modding) from certain war goal kinds, but some are required for them to function properly.

### List of settings
- require_target_be_part_of_war
	Target country has to be in the war, can't target neutral countries
- can_add_for_other_country
	Allows adding the goal for other participating countries
- annexes_entire_state
	Flag for if the goal is expected to always annex the entire target state. This is used to calculate conflicts with other goals
- annexes_entire_country
	Flag for if the goal is expected to always annex the entire target state. This is used to calculate conflicts with other goals
- country_creation
	Flag for if the goal creates a new country
- overlord_is_stakeholder
	Flag for if the stakeholder of the war goal should be the overlord rather than the target country itself
- can_target_decentralized
	If the war goal can target decentralized countries
- has_other_stakeholder
	If the war goal has a different stakeholder than the target itself
- turns_into_subject
	If the war goal turns the target country into a subject. For conflict resolution purposes
- skip_build_list
	If the war goal should be available to be picked in the diplomatic play or not
- targets_enemy_subject
	If the war goal should target an enemy subject specifically rather than all enemies in the war goal
- targets_enemy_claims
	If the war goal should target the claims of a country, rather than the country itself
- requires_interest
	If the war goal requires you to have an interest in the relevant strategic zone
- debug
	No effect, used for code debug purposes.
- assent_required
	Excludes the war goal from occupation-timer self-enforcement. It can only be enforced through capitulation or a negotiated peace deal, not by holding the objective mid-war.
- validate_subject_relation
	Validation behavior that checks if the resulting subject relation of this war goal is valid
- validate_formation_candidate_self
	Validation check to make sure the goal holder is a formation candidate
- validate_formation_candidate_target
	Validation check to make sure the goal target is a formation candidate
- validate_sole_formation_candidate
	Validation check to make sure the goal holder is the only formation candidate
- validate_target_not_treaty_port
	Validation check to make sure the target state is not a treaty port
- validate_join_power_bloc
	Special validation for join power bloc war goal kind
- validate_colonization_rights
	Special validation for colonization rights war goal kind
- validate_force_nationalization
	Special validation for force nationalization war goal kind
- validate_foreign_investment_rights
	Special validation for investment rights war goal kind
- validate_regime_change
	Special validation for regime change war goal kind
- validate_contain_threat
	Special validation for contain threat war goal kind
- validate_revoke_claims
	Special validation for revoke claims war goal kind
- validate_increase_autonomy
	Special validation for increase autonomy war goal kind
- validate_take_treaty_port
	Special validation for take treaty port war goal kind
- validate_independence
	Special validation for independence war goal kind
- validate_conflicts_war_goals_holder
	Validate conflicts with war goals of the same type from holder
- validate_conflicts_war_goals_all
	Validate conflicts with war goals of the same type from all participating countries
- validate_conflicts_conquer_state
	Validate conflicts with war goals that conquer states (i.e. that have the conflicts_with_annex_state)
- validate_conflicts_annex_country
	Validate conflicts with war goals that annex countries (i.e. that have the conflicts_with_annex_country)
- validate_conflicts_make_subject
	Validate conflicts with war goals that make new subjects (i.e. that have the conflicts_with_make_subject)
- validate_conflicts_existing_subject
	Validate conflicts with war goals that make new subjects (i.e. that have the conflicts_with_make_subject)
- conflicts_with_make_subject
	Marks the war goal as potentially conflicting with make subject war goals
- conflicts_with_country_creation
	Marks the war goal as potentially conflicting with country creation war goals
- conflicts_with_annex_country
	Marks the war goal as potentially conflicting with annex country war goals
- conflicts_with_annex_state
	Marks the war goal as potentially conflicting with annex state war goals
- conflicts_with_existing_subject
	Marks the war goal as potentially conflicting with existing subject war goals

## Execution Priority
Determines in what order war goals are executed in a peace deal. Higher value gets executed first. Changing this can make certain war goals not execute properly.

## Contestion Type
Determines what the war goal holder needs to do for the war goal to be considered controlled.

### List of Contestion Types
- control_target_state
- control_target_country_capital
- control_any_target_country_state
- control_any_target_incorporated_state
- control_own_state
- control_own_capital
- control_all_own_states
- control_all_target_country_claims
- control_any_releasable_state

## Side Switch
Whether enforcing this war goal moves the targeted country onto the enforcer's side of the war, and for which
kind of enforcement. The targeted country changes hands but its allegiance only follows where this says so.
Optional; defaults to `never`.

### List of Side Switch values
- never
	Enforcing never changes the target's side. The default, and correct for any war goal that does not change
	who a country answers to.
- on_capitulation
	The target stays on its own side when the goal enforces itself via its occupation timer, but does switch
	when the goal is enforced as part of a capitulation. Used by the subjugation goals and Transfer Subject:
	being conquered into submission mid-war does not buy the conqueror an ally, but capitulating does.
- always
	The target switches onto the enforcer's side however the goal was enforced. Used by Liberate Subject —
	freeing a subject is helping it, so it joins its liberator.

Note that for the subjugation goals this also decides which mirror war goal is created: a subject that stayed
on its own side gets an Independence goal to fight on for itself, while one that switched has to be freed by
the allies it left behind via Liberate Subject.

The country that switches is always the war goal's *target*. Independence is the one goal where the country
changing hands is the *holder* rather than the target, which is why it must stay `never` — giving it a
`side_switch` would move the wrong country.

## Target Type
What kind of entity the war goal primarily "targets". This primarily defines how the game generates potential alternatives for each war goal type when selecting one from the diplomatic play panel. Most war goal kinds will require a specific target type to work well and can't be changed (i.e. Conquer State can't have a Treaty Article target type). This field primarily allows you to have custom war goals target different entities.

### List of Target Types
- Country
	Loops over enemy countries to generate war goal alternatives
- State
	Loops over states belonging to enemy countries
- Treaty Article
	Loops over article types and then enemy countries

## Triggers and Effect

### Scope
For all of the following the same scopes are available:
- root (holder country)
- creator_country
- diplomatic_play
- target_country
- target_state
- stakeholder
- target_region
- article_options

### Possible trigger
This determines if and when the war goal is listed when selecting war goals in a diplomatic play.

### Valid trigger
This determines if the war goal is valid from a script perspective. Additional validation is done in code base on the war goal kind and settings.

### Maneuvers
How many maneuvers it costs to select this war goal

### Infamy
How much infamy it costs to claim this war goal

### On enforced
Additional script effects that you might want the war goal to execute. Do note that validation will not automatically take this into account and you will need to add validation settings as appropriate to avoid conflicts with other war goals.

## Fill per week / Deplete per week
Controls the occupation-timer enforcement bar (0-100). While the war goal is contested it gains `fill_per_week` each week; while it is not contested it loses `deplete_per_week` each week (floored at 0). When the bar reaches 100 the war goal enforces itself mid-war. Both are optional; a negative value (the default) falls back to the defines `WAR_GOAL_ENFORCEMENT_FILL_PER_WEEK` / `WAR_GOAL_ENFORCEMENT_DEPLETE_PER_WEEK`.

## Mirrored war goal
When this war goal self-enforces via its occupation timer, `mirrored_wargoal` defines the infamy-free "mirror" goal spawned on the other side so the war can continue. The presence of this block also marks the war goal as timer-enforceable; without it (and unless it is `assent_required`) the goal is only enforced via capitulation or a negotiated peace. A war goal with no resolvable `contestion_type` is never timer-enforceable regardless of this block (its bar could never fill).

- `method` — how the mirror is built:
	- `territorial` — retake taken territory. Chosen automatically from the goal's annexation: annexing the whole country spawns a `liberate_country` (or, for an annexed subject whose overlord is still at war, retake goals on its former states); taking a state spawns a claim-aware `return_state`/`conquer_state` for the former owner.
	- `swap` — spawn the `type` goal with holder and target swapped (e.g. `increase_autonomy` ⇄ `reduce_autonomy`, `join_power_bloc` ⇄ `leave_power_bloc`). Also used by the treaty-imposing goals (`ban_slavery`, `colonization_rights`, `enforce_treaty_article`, `foreign_investment_rights`, the `demand_*` group) to spawn a `break_enforced_treaties` for the victim. `break_enforced_treaties` annuls only the treaties/pacts the *target* forced onto the *holder* (enforced treaties whose `EnforcedOnCountry` is the holder, and forced pacts where the holder is the second/imposed-upon party) — voluntary agreements and anything the holder forced onto the target are left untouched.
	- `liberate_loser` — spawn an `annex_country` for the country that lost land, targeting the newly-created country.
	- `reverse_transfer` — spawn a `transfer_subject` moving the subject back to its former overlord.
	- `subjugate` — the new subject exits the war (neutralized), and a `liberate_subject` mirror is spawned for the continuing fighter on the subject's side. Used by the make-subject goals.
	- `restore_subject` — spawn a make-subject goal for the freed country's former overlord, re-establishing the prior relationship. The goal type is read from the freed subject's prior subject type via its `re_establish_war_goal` (see subject_types). Used by `liberate_subject` and `independence`.
	- `reparations` — spawn a `money_transfer` (enforce_treaty_article) mirror held by the victim, so the enforcer pays weekly reparations. The weekly amount is the enforcer's tax income times a fraction: `force_nationalization` scales it from `WAR_GOAL_REPARATIONS_NATIONALIZATION_MIN_INCOME_FRACTION` to `..._MAX_INCOME_FRACTION` by the share of the enforcer's GDP that was nationalized; every other goal (e.g. `open_market`) uses the fixed `WAR_GOAL_REPARATIONS_OPEN_MARKET_INCOME_FRACTION`. Used where enforcement is irreversible and can only be compensated, not reversed.
	- `no_mirror` — self-enforce but spawn no mirror.
- `type` — the mirror war goal type; only used by `method = swap`.

## AI / Is Significant Demand
AI flag that determines how important AI considers this war goal to be.