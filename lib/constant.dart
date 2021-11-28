
import 'package:flutter/material.dart';
import 'package:godeau/models/game_environement.dart';
import 'package:godeau/models/god_eau_game.dart';
import 'package:godeau/widgets/menu_level_button.dart';

Color buttonColor = const Color.fromRGBO(99, 195, 217, 0.3);

List<MenuLevelButton> listMenuLevel = [
  MenuLevelButton(text: "Tutoriel",onPressed: () {
    GameEnvironnement gameEnv = GameEnvironnement(waterQteStart: 100,ecosytemQteStart: 100,timeLimit: 200);
    final GodEauGame game = GodEauGame(gameEnv);
    // game.builder.build(game);
    // game.ov
    runApp(game.widget);
  },),
  MenuLevelButton(text: "Niveau 1",onPressed: () {},),
  MenuLevelButton(text: "Niveau 2",onPressed: () {},),
  MenuLevelButton(text: "Niveau 3",onPressed: () {},),

];
