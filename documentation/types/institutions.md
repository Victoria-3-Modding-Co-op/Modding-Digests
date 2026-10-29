    institution_key = {
        icon = "path/to/icon"                                                           # path to graphical icon
        background_texture = "path/to/background_texture"                               # path to background texture
        modifier = {}                                                                   # modifier on country for having adopted this institution
        dynamic_name = {}                                                               # optional country-scoped description block flavouring the institution name, falls back to the institution key when nothing matches
    }

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
