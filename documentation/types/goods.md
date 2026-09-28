    goods_key = {
        texture = "path/to/texture"                             # goods icon texture path
        cost = int                                              # base price of the good in currency units

        category = military/staple/industrial/luxury            # which goods category this belongs to, determines UI grouping

        tradeable = yes/no                                      # whether the good can be traded on the world market, default yes
        local = yes/no                                          # if yes, the good cannot leave the state it is produced in (e.g. services, transportation, electricity), default no
        fixed_price = yes/no                                    # if yes, price does not fluctuate based on supply/demand (e.g. gold), default no

        prestige_factor = int                                   # base prestige awarded for occupying the minimum prestige award spot on the goods production leaderboard, x2 for each rank above minimum

        traded_quantity = fixed_point                            # how many units of this good are moved per "trade" on the world market, also determines convoy cost for goods transfer treaties (1 merchant marine per traded_quantity transferred), default GOODS_DEFAULT_TRADE_QUANTITY (10)
        convoy_cost_multiplier = fixed_point                    # multiplier on merchant marine cost when this good is shipped as military supply or materiel, default GOODS_DEFAULT_MERCHANT_MARINE_COST_MULTIPLIER (1)

        obsession_chance = fixed_point                          # relative weight for pops to develop an obsession with this good, 0 or omitted means the good cannot be an obsession

        consumption_tax_cost = int                              # authority cost to apply consumption taxes to this good, if omitted the good cannot be taxed via consumption tax

        pop_consumption_can_add_infrastructure = yes/no         # if yes, pop consumption of this good contributes to state infrastructure (e.g. automobiles), default no
    }
