naval_mission_type_key = {
    icon = <texture>

    # Mission behaviors, define what the mission will actually do, some of these has specific properties
    # These can be potentially combined together but will most likely confuse the AI unless you make a
    # real solid ai_weight.
    intercept = <yes/no>
    project_power = <yes/no>
    blockade = <yes/no>
    raid_supply = <yes/no>
    protect_supply = <yes/no>
    piracy = <yes/no>
    port_bombardment = <yes/no>

    experience = <fixed point> # How much passive experience ships' crew gain from being on this mission every week

    # What targets intercept behavior will target
    intercept_targets = <none/hostile/piracy/all>

    # What targets piracy behavior will target. Shorthand that sets both the import and export targets below
    piracy_targets = <none/hostile/neutral/allies/non_allies/all>
    # Overrides piracy_targets for the importing side (the trade center whose imports are pirated)
    piracy_import_targets = <none/hostile/neutral/allies/non_allies/all>
    # Overrides piracy_targets for the exporting side (the trade center the goods are shipped from)
    piracy_export_targets = <none/hostile/neutral/allies/non_allies/all>

    modifier = {} # The modifier that will apply to the fleet when they are active in the mission area
    command_modifier = {} # Is applied to the commander of the fleet
    potential = {} # If the mission will even be available in the ux
    possible = {} # If the mission will be disabled or not in the ux
    ai_will_do = {} # Trigger to enable/disable this for ai

    # Used after AI has decided what type of mission behavior it wants what mission to pick
    # This means it is weighted between missions with same mission behavior profile and not against
    # all mission types that has been scripted
    ai_weight = {}
}
