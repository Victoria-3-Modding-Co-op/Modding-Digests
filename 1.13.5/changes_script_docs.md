# Script Documentation 1.13.5
## Table of Contents
 * [Effects](#effects)
 * [Triggers](#triggers)
## Notes
 * **Changed** means the description, scopes or anything related to the documentation for this element has changed
 * The list of iterators do **not** include generated geographic region based iterators
 * The on action scope is based on the script documentation, for more information see the `common/on_actions` directory

## Effects
| Type | Effect | Description |
|--|--|--|
| Changed | `create_military_formation` | Creates a military formation   |

## Triggers
| Type | Trigger | Trait | Description |
|--|--|--|--|
| Changed | `has_any_strait_control` |  -  | Check if the scoped country owns a strait province with naval fortification   |
| Changed | `has_any_strait_province` |  -  | Check if the scoped country owns any strait province   |
| Changed | `is_historical_treaty` | Boolean | Checks if the scoped treaty was signed before the game start date   |

