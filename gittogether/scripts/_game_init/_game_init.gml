gml_pragma("global", "_game_init()");

// Game Types - Enter your game entry here
enum Game {
	none,
	basic1,
	dungandrompa,
	asteroids,
	breakout,
	pong,
	frogger
}

// Make sure to add your game here
// arcade_game_add(type, name, arcade_machine_sprite, game_room)

arcade_game_add(Game.none, "<NONE>", spr_arcade_machine, rm_Overworld);

arcade_game_add(Game.basic1, "Basic 1", spr_ArcadeBasic1, rm_B1_Main);
arcade_game_add(Game.dungandrompa, "Dungandrompa", spr_arcade_dungandompa, rm_dungandrompa);
arcade_game_add(Game.asteroids, "Asteroids", spr_arcade_asteroids, rm_Asteroids);
arcade_game_add(Game.breakout, "Breakout", spr_arcade_breakout, rm_BR_game);
arcade_game_add(Game.pong, "Pong", spr_arcade_pong, rm_pong);
arcade_game_add(Game.frogger, "Frogger", spr_arcade_frogger, rm_frogger);