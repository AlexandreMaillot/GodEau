import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:godeau/controller/consumer.dart';
import 'package:godeau/models/god_eau_game.dart';

class WaterTreatmentMachine implements Consumer{
  @override
  int consumption;

  @override
  int maxQte = 10;

  @override
  int qte = 0;

  final GodEauGame game;

  Rect waterTreatmentMachineRect;
  Sprite waterTreatmentMachineSprite;

  WaterTreatmentMachine({this.game}){
    waterTreatmentMachineRect = Rect.fromLTWH(game.screenSize.width/4, game.screenSize.height - game.screenSize.height/2, 50, 50);
    waterTreatmentMachineSprite = Sprite('blackSquare.png');
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
    waterTreatmentMachineSprite.renderRect(canvas, waterTreatmentMachineRect);
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