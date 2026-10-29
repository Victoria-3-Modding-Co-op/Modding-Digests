# Breaking Changes 1.15.0
## Table of Contents
 * [Journal Entry Outcomes](#journal-entry-outcomes)
 * [Journal Entry Group Illustration](#journal-entry-group-illustration)
 * [Scripted Progress Bar Styling](#scripted-progress-bar-styling)
 * [Mobilization Option Group Background](#mobilization-option-group-background)
 * [Objective Illustrations](#objective-illustrations)
 * [New East Asian Gene](#new-east-asian-gene)
 * [Changed State Regions](#changed-state-regions)
 * [Required Quote Escaping](#required-quote-escaping)
 * [Ship Type AI Values (1.14)](#ship-type-ai-values-114)
 * [Subject Type Reestablish War Goal (1.14)](#subject-type-reestablish-war-goal-114)
 * [War Goals Mirror (1.14)](#war-goals-mirror-114)

## Journal Entry Outcomes

The `complete`, `on_complete`, `fail`, `invalid`, etc. blocks of journal entries have been condensed into `outcome` blocks.

**Example Code**
```
    outcome = {
        header = je_standard_completion_header
        effect_header = je_standard_on_completion_header
        color = "gold_positive"
        conclusion_desc = je_standard_completion_conclusion_desc
        trigger = {}
        effect = {}
        event_outcome_desc = {} # complex desc like a status_desc field
    }

    outcome = {
        header = je_standard_failure_header
        effect_header = je_standard_on_failure_header
        color = "blue_negative"
        conclusion_desc = je_standard_failure_conclusion_desc
        trigger = {}
        effect = {}
    }

    outcome = {
        flags = { hidden invalid_outcome }
        conclusion_desc = je_standard_failure_conclusion_desc
        trigger = {}
        effect = {}
    }
```

See the [type documentation](types/journal_entries.md) for more information.

## Journal Entry Group Illustration

Every journal entry group now needs an `illustration` defined. They can also be marked as `themed`.
Themed groups are separated out and are shown with their illustration on top to highlight them.
The illustration is also used in the header of journal entries of that group, so they are required.

Illustrations of the base game are 1108x200 pixels.

**Example Code**
```
je_group_global_international_situations = {
    context = none
    updates_strategic_region_stances = yes
    illustration = "gfx/interface/illustrations/journal/je_group_illu_international_situations.dds"
    themed = yes
}
```

## Scripted Progress Bar Styling

Scripted progress bars can now be styled, but for this they also removed a few of the hardcoded styles. Every scripted progress bar **not** using one of these needs to be updated:
```
default = yes
default_green = yes
default_bad = yes
```

**Example Code**
```
reform_or_revolution_progress_bar = {
    #...
    progress_texture = "gfx/interface/progressbar/progressbar_bad.dds"
    background_texture = "gfx/interface/progressbar/progressbar_gold.dds"
    glow_texture = "gfx/interface/progressbar/progressbar_bad_glow.dds"
    glow_line_texture = "gfx/interface/progressbar/progressbar_bad_glow_line.dds"
    marker = yes
    #...
}
```

See the [type documentation](types/scripted_progress_bars.md) for more information.

## Mobilization Option Group Background

Every mobilization option group now needs to have a `background` defined.

Backgrounds of the base game are 780x224 pixels.

**Example Code**
```
supplies = {
    background = "gfx/interface/illustrations/mobilization_options/mobilisation_supplies.dds"
    weight = 5
}
```

## Objective Illustrations

Every objective now needs an `illustration` defined. They are used like the themed journal entry group illustrations and are shown in the journal entry list.

Illustrations of the base game are 1108x300 pixels (**Different from JE groups**).

**Example Code**
```
objective_tutorial = {
    #...
    illustration = "gfx/interface/illustrations/journal/game_obj_illu_tutorial.dds"
    #...
}
```

## New East Asian Gene

Every character DNA now needs to contain this gene, otherwise it will produce errors.
To fix an old character, simply add this gene to it:
```
gene_asian_east = { "asian_east" 0 "asian_east" 0 }
```

## Changed State Regions

A lot of provinces were changed or added as well so keep this in mind.

**Renamed**
- `STATE_TARTARIA` -> `STATE_SARATOV`
- `STATE_KAUNAS` -> `STATE_LITHUANIA`
- `STATE_GALICH` -> `STATE_VOLOGDA`

**Added**
- `STATE_CHUKOTKA`
- `STATE_TULA`
- `STATE_KOSTROMA`

## Required Quote Escaping

When a localization function is used with a string parameter which then in turn contains a `$` reference to another localization key,
it now needs to be escaped using the `|q` "formatting" tag. It will produce an error if this is not done.

This is most relevant for the use of the global `Concept` and in future `Glossary` promote.

**Code Example**

This localization:
```
 unit_provinces_captured_mult: "[Concept('concept_province','$concept_provinces$')] Captured"
```
Needs to be changed to:
```
 unit_provinces_captured_mult: "[Concept('concept_province','$concept_provinces|q$')] Captured"
```


## Ship Type AI Values (1.14)

Ship types now need an `ai_ship_category` as well as an `ai_weight` and `vulnerability_exploitation` parameter set.

**Example Code**
```
ship_type_ship_of_the_line = {
    #...
    ai_ship_category = ai_ship_category_battle_line
    #...
    vulnerability_exploitation = 65
    #...
    ai_weight = 2
    #...
}
```

See the [type documentation](types/ship_types.md) for more information.

## Subject Type Reestablish War Goal (1.14)

Subject types now need to define a `re_establish_war_goal` parameter.

**Example Code**
```
subject_type_protectorate = {
    #...
    re_establish_war_goal = make_protectorate
    #...
}
```

## War Goals Mirror (1.14)

War goal types now need a `mirrored_wargoal` block.

**Example Code**
```
conquer_state = {
    #...
    mirrored_wargoal = {
        method = territorial
    }
    #...
}
```

See the [type documentation](types/war_goal_types.md) for more information.

