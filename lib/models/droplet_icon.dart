import 'dart:ui';

import 'package:flame/sprite.dart';

import 'god_eau_game.dart';

class DropletIcon{
  Rect dropletRect;
  Sprite dropletSprite;

  final GodEauGame game;

  DropletIcon({this.game}){
    dropletRect = Rect.fromLTWH(game.screenSize.width/15 , game.screenSize.height/30, 20, 20);
    dropletSprite = Sprite('droplet.png');
  }
  void update(double t){

  }
  void render (Canvas canvas){
    dropletSprite.renderRect(canvas, dropletRect);
  }
}