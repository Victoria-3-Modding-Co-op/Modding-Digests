map_mode_default_key = {
	map_mode = map_mode_key										# Map mode to show by default
	map_mode_lists = { <list> ... }								# Panels whose map mode dropdown starts on this map mode: budget, buildings, country, goods, market, military, power_bloc, diplomacy, society, population, strategic_region. Every list needs exactly one default
	lens_tabs = { <lens tab key> ... }							# Lens tabs that show this map mode while open: decrees, state_actions, development, agriculture, resources, urban, interests, diplomatic_plays, diplomatic_actions, diplomatic_overlord_actions, diplomatic_subjects_actions, treaty_articles, military. A lens tab without a default keeps the current map mode
}
