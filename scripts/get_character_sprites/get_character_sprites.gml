/// @function get_character_sprites(character)

enum CHARACTER {
	SKELETON,
	NEC,
}

function get_character_sprites(_character) {
	switch (_character) {
		case CHARACTER.NEC:
			return {
				idle: spr_nec_idle,
				run: spr_nec_run,
				air_up: spr_nec_air_up,
				air_down: spr_nec_air_down,
				dead: spr_nec_dead,
				summon_begin: spr_nec_summon_begin,
				summon: spr_nec_summon,
				trance_begin: spr_nec_trance_begin,
				trance: spr_nec_trance,
				trance_end: spr_nec_trance_end,
			};
		
		case CHARACTER.SKELETON:
			return {
				idle: spr_skeleton_idle,
				run: spr_skeleton_run,
				air_up: spr_skeleton_air_up,
				air_down: spr_skeleton_air_down,
				dead: spr_skeleton_dead,
				attack: spr_skeleton_attack,
				attack_preparation: spr_skeleton_attack_preparation,
			};
	}
}