## Country Definitions

Static per-tag data: colours, tier, country type, primary cultures, capital, and starting regnal
numbers.

### regnal_numbers

Starting regnal numbers for this tag. This is the **only** place pre-game regnal numbering is
defined - characters are never given a number by script, they are numbered when they take the throne.

```
GBR = {
	...
	regnal_numbers = {
		Elizabeth = 2
	}
}
```

Each entry sets the number the **next** ruler of that name is given. Great Britain has already had an
Elizabeth I, so its next Elizabeth becomes Elizabeth II.

Notes:

- The key must be a first name loc key as used by `first_name` in `common/character_templates`.
- Where a monarch of that name reigns at the game start, the number is theirs, because they are the
  next one to be numbered. Great Britain's `William = 4` is William IV, reigning in 1836.
- Setting a name to `1` does nothing - an unheld name is numbered I automatically, and the first
  holder of a name is shown without a numeral.
- A name is only reachable if one of the tag's cultures lists it in `male_regal_first_names` or
  `female_regal_first_names` in `common/cultures`, or a character template uses it. An entry for an
  unreachable name is harmless but dormant.
- Numbers are only handed out by governments that use regnal numbers: hereditary transfer of power,
  plus any government with `uses_regnal_numbers = yes` in `common/government_types`.
- Numbering carries across annexation and release, but not across a tag change, so a formed country
  starts fresh.
- Listing the same name twice for a tag is an error and is logged; the first entry wins.
