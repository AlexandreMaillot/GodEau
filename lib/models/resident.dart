import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:godeau/controller/consumer.dart';
import 'package:godeau/models/god_eau_game.dart';

class Resident implements Consumer {
  @override
  int consumption;

  @override
  int maxQte;

  @override
  int qte;

  @override
  // TODO: implement game
  GodEauGame get game => throw UnimplementedError();

  Rect residentRect;
  Sprite residentSprite;

  Resident({game}){
    //residentRect = Rect.fromLTWH(0, 0, 0, 0);
    //residentSprite = Sprite('fileName')
  }

  @override
  void decreaseWater(int qte) {

  }

  @override
  void increaseWater(int qte) {

  }

  @override
  void render(Canvas canvas) {
    residentSprite.renderRect(canvas, residentRect);
  }

  @override
  void update(double t) {

  }

  @override
  void updateConsumption() {

  }


}