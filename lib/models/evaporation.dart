import 'dart:ui';

import 'package:flame/sprite.dart';

import 'god_eau_game.dart';

class Evaporation{
  bool isEvaporing = false;
  Rect evaporationRect;
  Sprite evaporationSprite;

  final GodEauGame game;

  Evaporation({this.game}){
    evaporationRect = Rect.fromLTWH(game.screenSize.width - game.screenSize.width/5.8,game.screenSize.height/3.5,60, 60);
    evaporationSprite = Sprite('evaporation.png');
  }
  void update(double t){

  }
  void render (Canvas canvas){
    evaporationSprite.renderRect(canvas, evaporationRect);
  }
}