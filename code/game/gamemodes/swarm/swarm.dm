/datum/game_mode/swarm
	name = "swarm"
	config_tag = "swarm"
	report_type = "swarm"
	false_report_weight = 3
	var/swarmdelay = 2000
	var/cycles= 0
	required_players = 0

	//announce_span = "danger"
	//announce_text = "A major *swarm* is bombarding the station! The crew needs to evacuate to survive the *swarm*"

/datum/game_mode/swarm/process()
	if(swarmdelay > world.time - SSticker.round_start_time)
		return
	//announce_text = "A major *swarm* is bombarding the station! The crew needs to evacuate to survive the *swarm*"
	priority_announce("WATCH OUT")
	var/mob/living/simple_animal/hostile/megafauna/swarmer_swarm_beacon/fish
	if(cycles<1)
		for(var/obj/effect/landmark/swarmspawn/C in GLOB.landmarks_list)
			if (prob(90))
				fish = new (C.loc)
	else if(cycles<2)
		for(var/obj/effect/landmark/swarmspawn2/C in GLOB.landmarks_list)
			if (prob(90))
				fish = new /mob/living/simple_animal/hostile/poison/giant_spider(C.loc)
	else if(cycles<3)
		for(var/obj/effect/landmark/swarmspawn3/C in GLOB.landmarks_list)
			if (prob(90))
				fish = new /mob/living/simple_animal/hostile/megafauna/blood_drunk_miner(C.loc)
	else if (cycles<4)
		for(var/obj/effect/landmark/swarmspawn4/C in GLOB.landmarks_list)
			fish = new /mob/living/simple_animal/hostile/megafauna/legion(C.loc)

	swarmdelay = swarmdelay + 2000 + (cycles*500)
	cycles+=1
