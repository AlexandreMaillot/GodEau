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

  final GodEauGame game;

  Rect residentRect;
  Sprite residentSprite;

  Resident({this.game}){
    residentRect = Rect.fromLTWH(game.screenSize.width/2.7, game.screenSize.height - game.screenSize.height/2, 50, 50);
    residentSprite = Sprite('blackSquare.png');
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