import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:godeau/controller/consumer.dart';
import 'package:godeau/models/god_eau_game.dart';

class GroundwaterTable implements Consumer{
  @override
  int consumption;

  @override
  int maxQte;

  @override
  int qte;

  @override
  // TODO: implement game
  GodEauGame get game => throw UnimplementedError();

  Rect groundwaterTableRect;
  Sprite groundwaterTableSprite;

  GroundwaterTable({game}){
    //groundwaterTableRect = Rect.fromLTWH(0, 0, 0, 0);
    //groundwaterTableSprite = Sprite('fileName')
  }

  @override
  void decreaseWater(int qte) {

  }

  @override
  void increaseWater(int qte) {

  }

  @override
  void render(Canvas canvas) {
    groundwaterTableSprite.renderRect(canvas, groundwaterTableRect);
  }

  @override
  void update(double t) {

  }

  @override
  void updateConsumption() {

  }

}