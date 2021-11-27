import 'dart:ui';

import 'package:flame/sprite.dart';

import 'god_eau_game.dart';

class Map{
  Rect mapRect;
  Sprite mapSprite;
  final GodEauGame game;

  Map({this.game}){
    mapRect = Rect.fromLTWH(30, 10, game.screenSize.width - 60, game.screenSize.height - 20);
    mapSprite = Sprite("map.png");
  }
  void update(double t){

  }
  void render (Canvas canvas){//affichagfe des element sur le canvas
    mapSprite.renderRect(canvas, mapRect);
  }
}