import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:godeau/controller/consumer.dart';
import 'package:godeau/models/god_eau_game.dart';

class Cloud implements Consumer{
  @override
  int consumption;

  @override
  int maxQte;

  @override
  int qte;

  @override
  // TODO: implement game
  GodEauGame get game => throw UnimplementedError();

  Rect cloudRect;
  Sprite cloudSprite;

  Cloud({game}){
    //cloudRect = Rect.fromLTWH(0, 0, 0, 0);
    //cloudSprite = Sprite('fileName')
  }

  @override
  void decreaseWater(int qte) {

  }



  @override
  void increaseWater(int qte) {

  }

  @override
  void render(Canvas canvas) {
    cloudSprite.renderRect(canvas, cloudRect);
  }

  @override
  void update(double t) {

  }

  @override
  void updateConsumption() {

  }


}