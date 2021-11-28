import 'dart:ui';

import 'package:flame/sprite.dart';

import 'god_eau_game.dart';

class EndGame{
  Rect endGameRect;
  Sprite endGameSprite;
  List<Sprite> endGameSprites;
  int indexSprite = 0;
  final GodEauGame game;

  EndGame({this.game,int indexSprite}){
    endGameRect = Rect.fromLTWH(0, 0, game.screenSize.width, game.screenSize.height);
    endGameSprites = [Sprite("feb.png"),Sprite("ez.png")];
  }
  void update(double t){

  }
  void render (Canvas canvas){//affichagfe des element sur le canvas
    endGameSprite = endGameSprites[indexSprite];
    endGameSprite.renderRect(canvas, endGameRect);
  }
}