import 'dart:ui';

import 'package:flame/sprite.dart';

import 'god_eau_game.dart';

class Map{
  Rect mapRect;
  Sprite mapSprite;
  final GodEauGame game;

  Map({this.game}){
    //mapRect = Rect.fromLTWH(0, 0, 0, 0);
    //mapSprite = Sprite('name');
  }
  void update(double t){

  }
  void render (Canvas canvas){//affichagfe des element sur le canvas
    mapSprite.renderRect(canvas, mapRect);
  }
}