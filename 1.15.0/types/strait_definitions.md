dire_strait = {
	type = natural | artificial

	#Whether you need to control both sides of the strait to block it fully or militarily
	total_block_requires_full_control = no
	military_block_requires_full_control = no

	#Multiplier on how badly restricting this strait hurts dependent countries (relations drag, grievances and AI fallout). Default 1
	grievance_mult = 1.0

    #These need to be land provinces
	first_land_endpoint = x000000
	second_land_endpoint =xFFFFFF

    #These need to be sea provinces
	first_sea_endpoint = x000001
	second_sea_endpoint = xFFFFF0
}