/datum/game_mode/dangan
	name = "dangan"
	config_tag = "dangan"
	report_type = "dangan"
	false_report_weight = 3
	required_players = 0

	var/kills = 0
	var/body_views = 0

	announce_span = "danger"
	announce_text = "Thrills, chills, kills! Killing school life has begun!"


/datum/game_mode/dangan/pre_setup()


/datum/game_mode/dangan/post_setup()


/datum/game_mode/dangan/process()
	if (body_views<2)
		return