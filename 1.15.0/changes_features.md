# New Features 1.15.0
## Table of Contents
 * [One Time Events](#one-time-events)
 * [Glossaries](#glossaries)
 * [Dynamic Institution Names](#dynamic-institution-names)
 * [Character Role Backgrounds](#character-role-backgrounds)
 * [Power Bloc Effects](#power-bloc-effects)
 * [Scripted Progress Bar Conditions](#scripted-progress-bar-conditions)
 * [Regnal Numbers In Country Definitions](#regnal-numbers-in-country-definitions)
 * [Hidden Modifiers](#hidden-modifiers)
 * [Regional Exile Pools](#regional-exile-pools)
 * [Scripted Button Extensions](#scripted-button-extensions)
 * [State Region Cold Effect](#state-region-cold-effect)
 * [Objective Associated Journal Entries](#objective-associated-journal-entries)
 * [Weighted Music](#weighted-music)
 * [Weighted Loading Screens](#weighted-loading-screens)
 * [Straits Blocking Grievance Multiplier (1.14)](#straits-blocking-grievance-multiplier-114)

## One Time Events

Events can now have a `fire_only_once` or `fire_only_once_globally` parameter set.
So while we previously needed to work with large cooldowns, now we can simply mark an event to only fire once.

**Example Code**
```
some_event.1 = {
    #...
    fire_only_once = yes
    #...
}
```

## Glossaries

Glossaries are adjacent to concepts and work the same in a lot of ways.

They **need** to start with `glossary_` for them to work.

**Example Code**

Definition (the `icon` is optional):
```
glossary_tomas_de_zumalacarregui = {
    icon = "gfx/interface/icons/generic_icons/historical_character_icon.dds"
}
```
Localization (cut for brevity):
```
 glossary_tomas_de_zumalacarregui: "Tomás de Zumalacárregui"
 glossary_tomas_de_zumalacarregui_desc: "#tooltip_header Tomas Zumalakarregi Imatz#!\n$TOOLTIP_DELIMITER$\nBorn on #v Dec..."
```
References (cut for brevity):
```
 je_the_first_carlist_war_reason: "...or decades.\nUnder the leadership of [glossary_tomas_de_zumalacarregui], these rebels were shaped into a formidable fighting for..."
 tenpo_events.1.tt_2: "...ng in so-called [Glossary('glossary_uchikowashi','uchikowashi')], resulti..."
```

See the [type documentation](types/glossary.md) for more information.

## Dynamic Institution Names

Institutions can now have a `dynamic_name` block. This is optional and none of the base game institutions use it.

**Example Code**
```
institution_key = {
    #...
    # dynamic_name takes the standard description block, evaluated in country scope:
    dynamic_name = {
        first_valid = {
            triggered_desc = {
                desc = institution_colonial_affairs_colonial_office
                trigger = {
                    c:GBR ?= THIS
                }
            }
        }
    }
}
```

See the [type documentation](types/institutions.md) for more information.

## Character Role Backgrounds

Character roles can now have one or more `character_background` blocks defined, their assignment works the same as illustrations for military units.

**Example Code**
```
character_role_ruler = {
    #...
    character_background = {
        trigger = {
            character_is_emperor_of_japan = yes
            owner ?= { country_meiji_reform_emperor_restored = yes }
        }
        texture = "gfx/interface/character_panel/backgrounds/char_role_ruler_japan_post_meiji.dds"
    }
    character_background = {
        trigger = {
            character_is_emperor_of_japan = yes
        }
        texture = "gfx/interface/character_panel/backgrounds/char_role_ruler_japan_pre_meiji.dds"
    }
    character_background = {
        trigger = {
            character_is_tsar_of_russia = yes
        }
        texture = "gfx/interface/character_panel/backgrounds/char_role_ruler_russia.dds"
    }
    character_background = {
        trigger = {
            has_role_of_type = general
        }
        texture = "gfx/interface/character_panel/backgrounds/char_role_rulergeneral.dds"
    }
    character_background = {
        texture = "gfx/interface/character_panel/backgrounds/char_role_ruler.dds"
    }
}
```

See the [type documentation](types/character_roles.md) for more information.

## Power Bloc Effects

Power blocs were missing some important effects for modding, this update adds them.

**Effects**
- `add_power_bloc_mandate`
- `change_power_bloc_name`
- `destroy_power_bloc`
- `leave_power_bloc`

**On Action**
- `on_power_bloc_formed`

See the [script documentation changes](changes_script_docs.md) for more information.

## Journal Entry Scaling Modifiers

Journal entries now support scaling modifiers.

**Code Example**
```
    scaling_modifiers_while_active = {
        modifier = modifier_state_and_revolution_political_confrontation
        value = {
            value = "scope:journal_entry.scripted_bar_progress(je_state_and_revolution_political_bar)"
        }
    }
```

See the [type documentation](types/journal_entries.md) for more information.

## Journal Entry Map Modes

Journal entries now support custom map modes.
The EU5 wiki has a basic explanation on how scripted colors work:
- https://eu5.paradoxwikis.com/Color#Scripted_math_with_colors

See the [type documentation](types/journal_entries.md) for more information.

## Scripted Progress Bar Conditions

Scripted progress bars now have a dedicated box with things that influence their progress.
To feed this new GUI element a new script element called `progress_condition` has been introduced.
The calculation is still a normal script value and the use of this new element is optional,
but if you want the factors which influence a progress bar to be shown to the user this is the best solution.

**Example Code**
```
austrian_neo_absolutism_constitutional_pressure_progress_bar = {
     #...
     monthly_progress = {
        progress_condition = {
            limit = {
                has_modifier = declared_bankruptcy
            }
            add = {
                desc = "austrian_neo_absolutism_declared_bankruptcy"
                value = 10
            }
        }
        progress_condition = {
            limit = {
                taking_loans = yes
            }
            add = {
                desc = "austrian_neo_absolutism_taking_loans"
                value = 1
            }
        }
        #...
    }
    #...
}
```

## Regnal Numbers In Country Definitions

Regnal numbers can now be defined in country definitions.

**Example Code**
```
GBR = {
    #...
    regnal_numbers = {
        Anne = 2
        Charles = 3
        Edward = 7 # the six post-Conquest Edwards; Edward the Confessor is not numbered
        Elizabeth = 2
        George = 5
        Henry = 9
        James = 3 # English numbering, as the British crown uses
        John = 2
        Mary = 3 # Mary I and Mary II
        Richard = 4
        Stephen = 2
        William = 4 # William IV reigns at the start and is numbered from here
    }
}
```

See the [type documentation](types/country_definitions.md) for more information.

## Hidden Modifiers

Modifier types can now be hidden via a new attribute `hidden = yes`.
This seems to be undocumented in the type documentation for modifier type definitions.

**Example Code**
```
country_rlit_cultural_prestige_add = {
	script_only = yes
	hidden = yes
	decimals = 0
	color = good
}
```

## Regional Exile Pools

- Characters exiled to a Regional Exile Pool are only visible to, and can only be invited by, countries that fulfill the pool's has_access trigger.
- has_access is required; a pool without one can never be accessed. It is evaluated in the Country scope.
- If no country can access a pool anymore, its exiles are moved to the global exile pool and lose their return date. This is checked quarterly.
- Exile characters to a pool with the effect: `exile_character = { exile_pool = <pool key> months/years = <int> }` (`duration` is optional; the character automatically returns to their home country when it expires).
- Localization: add a key matching the pool key (e.g. `siberian_exile_pool`) for the tab name in the Invite Exile UI.

See the [type documentation](types/regional_exile_pools.md) for more information.

## Scripted Button Extensions

- Scripted buttons can now have a `cost` associated with them, this is purely cosmetic script value
- Scripted buttons can now have a `tags` block on them, this can be used to identify them in GUI for custom journal entry widgets
- There is now an optional `autocomplete` bool to automate the button
- Finally scripted buttons now also have an optional `icon` property

See the [type documentation](types/scripted_buttons.md) for more information.

## State Region Cold Effect

State regions can now have a `min_cold_effect` and `max_cold_effect` parameter defined.

**Example Code**
```
STATE_ORLEANS = {
    #...
    min_cold_effect = 0.00
    max_cold_effect = 0.45
}
```

See the [type documentation](types/state_regions.md) for more information.

## Objective Associated Journal Entries

Objectives can now have an `assosciated_journal_entries` block defined.
It is only meant to inform the player about potential content associated with this objective,
it does not need to be complete.

**Example Code**
```
objective_tutorial = {
    #...
    associated_journal_entries = {
        je_tutorial_expand_basic_building
        je_tutorial_fix_budget_deficit
        #...
    }
    #...
}
```

See the [type documentation](types/objectives.md) for more information.

## Weighted Music

In game music tracks can now have a `weight` country scope script value defined.

**Example Code**
```
mx_mood_tr_71 = {
    #...
    weight = {
        value = 100
        if = {
            limit = {
                any_primary_culture = { has_discrimination_trait = heritage_east_slavic }
            }
            add = 100
        }
        if = {
            limit = {
                is_in_geographic_region = geographic_region_russian_eurasia
                NOT = { is_in_geographic_region = geographic_region_home_islands }
            }
            add = 100
        }
        if = {
            limit = {
                NOT = { is_in_geographic_region = geographic_region_russian_eurasia }
                overlord ?= {
                    any_primary_culture = { has_discrimination_trait = heritage_east_slavic }
                }
            }
            add = 50
        }
    }
}
```

See the [type documentation](types/music.md) for more information.

## Weighted Loading Screens

Loading screens can now have a script defined for them,
it allows increasing or reducing the likelihood of specific loading screens and also linking them to a specific game time.
The base game uses a new release order parameter in DLC definitions to weight newer DLC loading screens higher.

**Example Code**
```
entry = {
	texture = "gfx/loadingscreens/victoria3_load_winter.dds"
	weight = 10
	start_date = 2000.12.15
	end_date = 2000.1.6
}
```

See the [type documentation](types/loadingscreen_settings.md) for more information.

## Straits Blocking Grievance Multiplier (1.14)

Straits can now have a `grievance_mult` defined. The base game uses this for the strait of gibraltar.

**Example Code**
```
strait_gibraltar = {
    #...
    grievance_mult = 1.5 # Gibraltar matters more to the world than its measured trade shows
    #...
}
```

See the [type documentation](types/strait_definitions.md) for more information.