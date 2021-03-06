import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:godeau/controller/consumer.dart';
import 'package:godeau/models/god_eau_game.dart';

class Pump implements Consumer{
  @override
  int consumption;

  @override
  int maxQte = 10;

  @override
  int qte = 0;

  final GodEauGame game;

  Rect pumpRect;
  Sprite pumpSprite;

  Pump({this.game}){
  pumpRect = Rect.fromLTWH(game.screenSize.width/7, game.screenSize.height - game.screenSize.height/1.9, 50, 50);
  pumpSprite = Sprite('pump.png');
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
    pumpSprite.renderRect(canvas, pumpRect);
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