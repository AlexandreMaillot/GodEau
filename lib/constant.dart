
import 'package:flame/game.dart';
import 'package:flame/game/embedded_game_widget.dart';
import 'package:flame/game/widget_builder.dart';
import 'package:flutter/material.dart';
import 'package:godeau/models/game_environement.dart';
import 'package:godeau/models/god_eau_game.dart';
import 'package:godeau/widgets/menu_level_button.dart';

Color buttonColor = const Color.fromRGBO(99, 195, 217, 0.3);

List<MenuLevelButton> listMenuLevel = [
  MenuLevelButton(text: "Niveau 1",onPressed: () {
    GameEnvironnement gameEnv = GameEnvironnement(waterQte: 220,ecosytemQte: 100,timeLimitParam: 120);
    launchGame(gameEnv);
  },),
  MenuLevelButton(text: "Niveau 2",onPressed: () {
    GameEnvironnement gameEnv = GameEnvironnement(waterQte: 15,ecosytemQte: 50,timeLimitParam: 10);
    launchGame(gameEnv);
  },),
  MenuLevelButton(text: "Niveau 3",onPressed: () {
    GameEnvironnement gameEnv = GameEnvironnement(waterQte: 150,ecosytemQte: 50,timeLimitParam: 100);
    launchGame(gameEnv);
  },),
  MenuLevelButton(text: "Niveau 4",onPressed: () {
    GameEnvironnement gameEnv = GameEnvironnement(waterQte: 20,ecosytemQte: 100,timeLimitParam: 30);
    launchGame(gameEnv);
  },),

];

void launchGame(GameEnvironnement gameEnv) {
  final GodEauGame game = GodEauGame(gameEnv);

  runApp(game.widget);
}
