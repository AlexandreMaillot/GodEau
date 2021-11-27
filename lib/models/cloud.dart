import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:godeau/controller/consumer.dart';
import 'package:godeau/models/god_eau_game.dart';

class Cloud implements Consumer{
  @override
  int consumption = 10;

  @override
  int maxQte = 10;

  @override
  int qte = 0;

  final GodEauGame game;

  Rect cloudRect;
  Sprite cloudSprite;

  Cloud({this.game}){
    cloudRect = Rect.fromLTWH(game.screenSize.width - game.screenSize.width/7, game.screenSize.height/8, 50, 50);
    cloudSprite = Sprite('blackSquare.png');
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