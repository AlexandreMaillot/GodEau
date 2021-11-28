import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:godeau/models/god_eau_game.dart';

class HourGlass{
  Rect hourGlassRect;
  Sprite hourGlassSprite;
  final GodEauGame game;

  HourGlass({this.game}){
    hourGlassRect = Rect.fromLTWH(game.screenSize.width - game.screenSize.width/15, game.screenSize.height/30, 30, 30);
    hourGlassSprite = Sprite('hourglass.png');
  }
  void update(double t){

  }
  void render (Canvas canvas){//affichagfe des element sur le canvas
    hourGlassSprite.renderRect(canvas, hourGlassRect);
  }
}