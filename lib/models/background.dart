import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:godeau/models/god_eau_game.dart';

class Background{
  Rect backgroundRect;
  Sprite backgroundSprite;
  final GodEauGame game;

  Background({this.game}){
    //backgroundRect = Rect.fromLTWH(0, 0, 0, 0);
    //backgroundSprite = Sprite('name');
  }
  void update(double t){

  }
  void render (Canvas canvas){//affichagfe des element sur le canvas
    backgroundSprite.renderRect(canvas, backgroundRect);
  }
}