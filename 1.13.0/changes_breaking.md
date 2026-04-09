# Breaking Changes 1.13.0
## Table of Contents
 * [Character Roles](#character-roles)
 * [Declaring Interest](#declaring-interest)
 * [Strategic Regions](#strategic-regions)
 * [Map Changes](#map-changes)
 * [Memento Mori](#memento-mori)
 * [Auto Pin Journal Entries](#auto-pin-journal-entries)
 * [Combat Units](#combat-units)
 * [Canals](#canals)

## Character Roles
This update introduces scriptable character roles.

Through this change the existing triggers for character roles have changed as well.

To keep the same behavior as before these triggers need to be replaced:
- `has_role` -> `has_role_of_type`
- `is_ruler` -> `is_ruler_of_own_country`
- `is_heir` -> `is_heir_of_own_country`

For a full introduction into scriptable character roles see [here](major_features.md#custom-character-roles).

## Declaring Interest
In this update the declared interest mechanic has been fully reworked.

This includes effects and triggers around the system.

See the [script documentation changes](changes_script_docs.md) for more information.

## Strategic Regions
As part of the declared interest rework the developers decided to rename, consolidate and split existing strategic regions.

They basically touched all of them so you will need to check whether any references still work. The pre-1.13 strategic regions have been preserved as newly defined geographic regions, so the logic of the regions can be kept by updating the script references that way.

This impacts the creation of military units and HQs.

Thanks to [CaesarVincens](https://forum.paradoxplaza.com/forum/members/caesarvincens.535173/) and a [tool by Licarious](https://forum.paradoxplaza.com/forum/threads/tool-vic3-mapper.1550357/) we have this [map](references/strategic_regions.png) and this [diff image](references/strategic_region_diff.png) for the strategic regions.

A full list of the new strategic region names was shared by Commadore Pelly and can be found [here](references/strategic_region_names.md).

> **NOTE:** The new strategic regions have also been defined as geographic regions, in addition to the old ones: `common/geographic_regions/05_new_strategic_regions.txt`, `common/geographic_regions/06_old_strategic_regions.txt`

## Map Changes
As with every major update the map was changed. This time the underlying state regions in Japan were adjusted.

A list of the new state region names was shared by Commadore Pelly and can be found [here](references/japanese_states.md).

## Memento Mori
Before this update the career length of characters was controlled using a variable called `memento_mori_immunity`.

Now this has been formalized into a full system. The career length is now controlled and can be checked with these triggers and effects:
- `add_career_length`
- `set_career_length`
- `remaining_career_length`

See the [script documentation changes](changes_script_docs.md) for more information.

## Auto Pin Journal Entries
The `should_be_pinned_by_default` parameter for Journal Entries has been split into two and won't work anymore.

To replace it with the same behavior you will need to rename it to `should_be_pinned_by_default_uninvolved_or_context`.

For contextless Journal Entries there is now `should_be_pinned_by_default_involved`.

## Combat Units
Ships are no longer combat units and are now totally separate entities.

For a full introduction into them see [here](major_features.md#ships).

Also, normal combat units have gotten a new parameter called `supply_capacity`. Custom combat units need this added to their definitions.

## Canals
Canals have been replaced with straits.

For a full introduction into them see [here](major_features.md#straits).