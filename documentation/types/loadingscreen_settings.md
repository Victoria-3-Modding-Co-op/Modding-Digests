# Every .dds in gfx/loadingscreens and in each installed DLC's gfx/loadingscreens is picked up automatically, no entry needed
# Default weight = ( release rank + 1 ) ^ release_order_exponent, where the base game has rank 0 and each DLC that has loading screens gets the next rank in dlcNNN folder order
# This file only lists exceptions to that default

# Shapes how strongly newer DLCs are favored; 0 or leaving it out gives every screen the same weight
release_order_exponent = <float>

# [Can be repeated]
entry = {
	# Path of the loading screen, as for any other texture; entries for files that are not installed are ignored
	texture = <texture>

	# [Default = 1] Replaces the release order weight of this screen; 0 removes the screen
	weight = <float>

	# [Optional] Dates in local time, both ends included; an entry with both dates is an extra seasonal screen added on top of the regular one instead of an override
	# Only the month and day are used, so the window repeats every year and may wrap the new year, e.g. 2000.12.15 to 2000.1.6; write any year after 1
	start_date = <date>
	end_date = <date>
}
