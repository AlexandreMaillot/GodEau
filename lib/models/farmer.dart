import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:flame/time.dart';
import 'package:godeau/controller/consumer.dart';
import 'package:godeau/models/god_eau_game.dart';

class Farmer implements Consumer {
  @override
  int consumption = 5;

  @override
  int maxQte;

  @override
  int qte;

  final GodEauGame game;

  Rect farmerRect;
  Sprite farmerSprite;
  Timer farmerTimer;

  Farmer({this.game}){
    farmerRect = Rect.fromLTWH(game.screenSize.width/2 - game.screenSize.width/20, game.screenSize.height/7, 100, 50);
    farmerSprite = Sprite('field.png');
    farmerTimer = Timer(5,repeat: true,callback:(){
      game.environnement.decreaseWaterQteFinal(consumption);
    });
    farmerTimer.start();
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
    farmerSprite.renderRect(canvas, farmerRect);
  }

  @override
  void update(double t) {
    farmerTimer.update(t);
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