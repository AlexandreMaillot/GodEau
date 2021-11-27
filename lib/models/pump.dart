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

  @override
  // TODO: implement game
  GodEauGame get game => throw UnimplementedError();

  Rect pumpRect;
  Sprite pumpSprite;

  Pump({game}){
  //pumpRect = Rect.fromLTWH(0, 0, 0, 0);
  //pumpSprite = Sprite('fileName')
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