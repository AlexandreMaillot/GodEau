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

  final GodEauGame game;

  Rect groundwaterTableRect;
  Sprite groundwaterTableSprite;

  GroundwaterTable({this.game}){
    groundwaterTableRect = Rect.fromLTWH(game.screenSize.width/7, game.screenSize.height - game.screenSize.height/3.7, 10, 10);
    groundwaterTableSprite = Sprite('river.png');
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