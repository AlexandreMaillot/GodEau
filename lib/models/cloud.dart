import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:godeau/controller/consumer.dart';
import 'package:godeau/models/god_eau_game.dart';

class Cloud implements Consumer{
  @override
  int consumption = 10;

  @override
  int maxQte = 20;

  @override
  int qte = 0;

  final GodEauGame game;
  bool isQteShow = true;
  Rect cloudRect;
  Sprite cloudSprite;

  Cloud({this.game}){
    cloudRect = Rect.fromLTWH(game.screenSize.width - game.screenSize.width/5, game.screenSize.height/8, 100, 50);
    cloudSprite = Sprite('cloud.png');
  }

  @override
  void decreaseWater(int qte) {
    if(this.qte - qte >= 0){
      this.qte -= qte;
    } else {
      this.qte = 0;
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
    cloudSprite.renderRect(canvas, cloudRect);
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