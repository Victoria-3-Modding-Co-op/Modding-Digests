# Release 1.12.0 - Features
## INJECT & REPLACE
1.12 introduces the ability to inject into or replace types like buildings.

While this feature is excellent for compatibility, it will break most old mods.

For details on how it works as well as what it breaks, take a look at the [breaking changes](breaking_changes.md) page.

## Geographic Regions
We can now define custom geographic regions. These are a predefined group of state regions.

They come with some cool features like:
- Triggers to check whether something is in it
- Custom names and descriptions
- Iterators like `{any|every|random|ordered}_country_in_<geographic_region_short_key>`, `{any|every|random|ordered}_state_in_<geographic_region_short_key>` and more

The full documentation on how to create them can be found [here](types/geographic_regions.md).

## Contextless Journal Entries
With 1.12 Journal Entries can now exist without being bound to a country.

This is comparable to the Situation Journal Entries we have built for [CMF](https://github.com/Victoria-3-Modding-Co-op/Community-Mod-Framework?tab=readme-ov-file#eu5-style-situation-journal-entries) and will complement them really nicely.

The new journal entry documentation can be found [here](types/journal_entries.md) and the journal entry group documentation can be found [here](types/journal_entry_groups.md).

## Amendments
Amendments are a new type that can add modifiers to an existing law and/or institution.

Their documentation can be found [here](types/amendments.md).

## War Goals
After a lot of begging, we can finally mod war goals!

The documentation can be found [here](types/war_goal_types.md).

## Regional Production Methods
Production Methods sadly still do not have a pure trigger, but we can now limit them by geographic region:
```
coffee_plantation_wet_process_manual = {
	# ...
	unlocking_geographic_regions = {
		geographic_region_wet_process_coffee_region
	}
	# ...
}
```

## Culture Name Order
The order of first and last names can now be defined per culture:
```
mongol = {
    # ...
    name_format = last_first
    # ...
}
```

## Script Only Modifiers
Modifiers types can now be declared as "script only". This will suppress the annoying error spam for custom modifiers:
```
character_coup_strength_add = {
    # ...
	script_only = yes
    # ...
}
```

## Event Categories
Events can now have a `category` property.
This is a key that can be checked on the GUI side.
```
some_event.1 = {
    # ...
    category = my_cool_category
    # ...
}
```
```
textbox = {
    visible = "[Event.HasCategory('my_cool_category')]"
    raw_text = "This text is only visible when the event is in my_cool_category"
}
```