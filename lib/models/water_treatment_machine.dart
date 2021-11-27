import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:godeau/controller/consumer.dart';
import 'package:godeau/models/god_eau_game.dart';

class WaterTreatmentMachine implements Consumer{
  @override
  int consumption;

  @override
  int maxQte;

  @override
  int qte;

  final GodEauGame game;

  Rect waterTreatmentMachineRect;
  Sprite waterTreatmentMachineSprite;

  WaterTreatmentMachine({this.game}){
    waterTreatmentMachineRect = Rect.fromLTWH(game.screenSize.width/2, game.screenSize.height - game.screenSize.height/2.3, 50, 50);
    waterTreatmentMachineSprite = Sprite('blackSquare.png');
  }

  @override
  void decreaseWater(int qte) {

  }

  @override
  void increaseWater(int qte) {

  }

  @override
  void render(Canvas canvas) {
    waterTreatmentMachineSprite.renderRect(canvas, waterTreatmentMachineRect);
  }

  @override
  void update(double t) {

  }

  @override
  void updateConsumption() {

  }

}