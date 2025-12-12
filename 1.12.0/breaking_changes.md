# Release 1.12.0 - Breaking Changes
## Overwrite Logic
With the introduction of `INJECT`, `REPLACE` and so on the game no longer supports **implicit** overwrites.

While before, we could simply redefine a base game type (like a building) in a mod to overwrite it, now we need to **explicitly** say that a specific type should be overwritten.

This is needed for all types that support the new `INJECT`, `REPLACE` and so on keywords.

The full list of supported types can be found [here](inject_types.md).

**Example:**

Before `1.12` this was enough to overwrite a building:
```
building_university = {
    # properties
}
```
Now we **NEED** to specifically overwrite (replace) the building:
```
REPLACE:building_university = {
    # properties
}
```

## Journal Entry Group Context
Every journal entry group now requires a context to be set.

When now context is set, it will default to `none` which is a contextless journal entry.

So if you do not add the `country` context to your custom journal entry groups they will break your existing journal entries.

## Renamed Buildings and Production Methods
A lot of base game buildings and a few corresponding Production Methods have been renamed.

The new standard is singular building names.

For example: `building_artillery_foundries` -> `building_artillery_foundry`

The full list of renamed buildings can be found [here](renamed_buildings.md).

## Renamed and added State Regions
Renamed State Regions:
- Renamed `STATE_TOLEDO` to `STATE_NEW_CASTILE`
- Renamed `STATE_CASTILE` to `STATE_OLD_CASTILE`
- Renamed `STATE_NAVARRA` to `STATE_BASQUE_COUNTRY`
- Renamed `STATE_ANDALUSIA` to `STATE_LOWER_ANDALUSIA`
- Renamed `STATE_GRANADA` to `STATE_UPPER_ANDALUSIA`
- Renamed `STATE_BADAJOZ` to `STATE_EXTREMADURA`
- Renamed `STATE_CUBA` to `STATE_WESTERN_CUBA`

New State Regions:
- Added `STATE_MURCIA`
- Added `STATE_LEON`
- Added `STATE_ENTRE_DOURO_E_MINHO`
- Added `STATE_EASTERN_CUBA`
- Added `STATE_CENTRAL_CUBA`

## Map Data Resources
Resources in the map data definitions are now not bound to building groups but buildings:
```
    arable_resources = { "building_wheat_farm" }
    capped_resources = {
        building_fishing_wharf = 4
    }
    resource = {
        type = "building_oil_rig"
        undiscovered_amount = 40
    }
```

## Ordered Iterators
Previously ordered iterators like `ordered_country = {}` only applied their effects to the first item in the list by default unless a `max` or `position` was specified.

From now on this behavior is reversed, and by default, the iterator effects are applied to **ALL** items in the list, unless a `max` or `position` was specified.

This means you need to check and change all places where your mod is using these iterators.

## Notes
### Geographic Triggers
The new geographic triggers can easily crash the game if there are syntax errors.

So check your code before it is hot loaded.