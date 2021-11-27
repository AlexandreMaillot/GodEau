import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:godeau/controller/consumer.dart';
import 'package:godeau/models/god_eau_game.dart';

class Pump implements Consumer{
  @override
  int consumption;

  @override
  int maxQte;

  @override
  int qte;

  final GodEauGame game;

  Rect pumpRect;
  Sprite pumpSprite;

  Pump({this.game}){
  pumpRect = Rect.fromLTWH(game.screenSize.width/7, game.screenSize.height - game.screenSize.height/1.8, 50, 50);
  pumpSprite = Sprite('blackSquare.png');
  }

  @override
  void decreaseWater(int qte) {

  }

  @override
  void increaseWater(int qte) {

  }

  @override
  void render(Canvas canvas) {
    pumpSprite.renderRect(canvas, pumpRect);
  }

  @override
  void update(double t) {

  }

  @override
  void updateConsumption() {

  }

}