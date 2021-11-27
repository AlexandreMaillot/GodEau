
import 'package:flutter/material.dart';
import 'package:godeau/models/game_environement.dart';
import 'package:godeau/models/god_eau_game.dart';
import 'package:godeau/widgets/menu_level_button.dart';

Color buttonColor = const Color.fromRGBO(99, 195, 217, 1);

List<MenuLevelButton> listMenuLevel = [
  MenuLevelButton(text: "Tutoriel",onPressed: () {
    GameEnvironnement gameEnv = GameEnvironnement(waterQteStart: 50,ecosytemQteStart: 50);
    GodEauGame game = GodEauGame(gameEnv);
    runApp(game.widget);
  },),
  MenuLevelButton(text: "Niveau 1",onPressed: () {},),
  MenuLevelButton(text: "Niveau 2",onPressed: () {},),
  MenuLevelButton(text: "Niveau 3",onPressed: () {},),

];
