import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:godeau/controller/consumer.dart';
import 'package:godeau/models/god_eau_game.dart';

class River implements Consumer{
  @override
  int consumption;

  @override
  int maxQte = 10;

  @override
  int qte = 0;

  final GodEauGame game;

  Rect riverRect;
  Sprite riverSprite;

  River({this.game}){
    riverRect = Rect.fromLTWH(game.screenSize.width/3.5, game.screenSize.height - game.screenSize.height/1.7, 40, 10);
    riverSprite = Sprite('river.png');
  }

  @override
  void decreaseWater(int qte) {

  }



  @override
  void increaseWater(int qte) {

  }

  @override
  void render(Canvas canvas) {
    riverSprite.renderRect(canvas, riverRect);
  }

  @override
  void update(double t) {

  }

  @override
  void updateConsumption() {

  }

  
}