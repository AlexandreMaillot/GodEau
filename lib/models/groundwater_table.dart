import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:godeau/controller/consumer.dart';
import 'package:godeau/models/god_eau_game.dart';

class GroundwaterTable implements Consumer{
  @override
  int consumption;

  @override
  int maxQte = 40;

  @override
  int qte = 20;

  final GodEauGame game;

  Rect groundwaterTableRect;
  Sprite groundwaterTableSprite;

  GroundwaterTable({this.game}){
    groundwaterTableRect = Rect.fromLTWH(game.screenSize.width/7, game.screenSize.height - game.screenSize.height/3.7, 10, 10);
    groundwaterTableSprite = Sprite('river.png');
  }

  @override
  void decreaseWater(int qte) {
    if(this.qte - qte >= 0){
      this.qte -= qte;
    } else {
      this.qte = 0;
      game.environnement.decreaseEcosystemQteFinal(maxQte - this.qte + qte);
    }
  }

  @override
  void increaseWater(int qte) {
    if(this.qte + qte <= maxQte){
      this.qte += qte;
    } else {
      this.qte = maxQte;
      game.environnement.decreaseEcosystemQteFinal(maxQte - this.qte + qte);
    }
  }

  @override
  void render(Canvas canvas) {
    groundwaterTableSprite.renderRect(canvas, groundwaterTableRect);
  }

  @override
  void update(double t) {

  }

  @override
  void updateConsumption(int qte) {
    if(qte + consumption < 1) {
      consumption = 1;
    } else {
      consumption += qte;
    }
    print(consumption);
  }

}