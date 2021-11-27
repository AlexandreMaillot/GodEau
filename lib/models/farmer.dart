import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:godeau/controller/consumer.dart';
import 'package:godeau/models/god_eau_game.dart';

class Farmer implements Consumer {
  @override
  int consumption;

  @override
  int maxQte;

  @override
  int qte;

  final GodEauGame game;

  Rect farmerRect;
  Sprite farmerSprite;

  Farmer({this.game}){
    farmerRect = Rect.fromLTWH(game.screenSize.width/2 - game.screenSize.width/20, game.screenSize.height/7, 50, 50);
    farmerSprite = Sprite('blackSquare.png');
  }

  @override
  void decreaseWater(int qte) {

  }

  @override
  void increaseWater(int qte) {

  }

  @override
  void render(Canvas canvas) {
    farmerSprite.renderRect(canvas, farmerRect);
  }

  @override
  void update(double t) {

  }

  @override
  void updateConsumption() {

  }


}