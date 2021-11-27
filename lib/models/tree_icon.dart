import 'dart:ui';

import 'package:flame/sprite.dart';

import 'god_eau_game.dart';

class TreeIcon{
  Rect treeIconRect;
  Sprite treeIconSprite;

  final GodEauGame game;

  TreeIcon({this.game}){
    treeIconRect = Rect.fromLTWH(game.screenSize.width/6, game.screenSize.height/30, 20, 20);
    treeIconSprite = Sprite('tree.png');
  }
  void update(double t){

  }
  void render (Canvas canvas){
    treeIconSprite.renderRect(canvas, treeIconRect);
  }
}