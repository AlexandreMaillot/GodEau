import 'dart:ui';

import 'package:flame/sprite.dart';

import 'god_eau_game.dart';

class Wind{
  Rect windRect;
  Sprite windSprite;
  bool isActivated = false;
  final GodEauGame game;

  Wind({this.game}){
    windRect = Rect.fromLTWH(game.screenSize.width - game.screenSize.width/13, game.screenSize.height/8, 60, 60);
    windSprite = Sprite('blackSquare.png');
  }
  void update(double t){

  }
  void render (Canvas canvas){
    windSprite.renderRect(canvas, windRect);
  }
}