import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:godeau/controller/consumer.dart';
import 'package:godeau/models/god_eau_game.dart';

class Resident implements Consumer {
  @override
  int consumption = 1;

  @override
  int maxQte;

  @override
  int qte;

  final GodEauGame game;

  Rect residentRect;
  Sprite residentSprite;

  Resident({this.game}){
    residentRect = Rect.fromLTWH(game.screenSize.width/2.9, game.screenSize.height - game.screenSize.height/2, 90, 90);
    residentSprite = Sprite('resident.png');
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