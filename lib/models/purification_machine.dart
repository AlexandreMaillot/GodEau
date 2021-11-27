import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:godeau/controller/consumer.dart';
import 'package:godeau/models/god_eau_game.dart';

class PurificationMachine implements Consumer{
  @override
  int consumption;

  @override
  int maxQte;

  @override
  int qte;

  final GodEauGame game;

  Rect purificationMachineRect;
  Sprite purificationMachineSprite;

  PurificationMachine({this.game}){
  purificationMachineRect = Rect.fromLTWH(game.screenSize.width/4, game.screenSize.height - game.screenSize.height/2.3, 50, 50);
  purificationMachineSprite = Sprite('blackSquare.png');
  }

  @override
  void decreaseWater(int qte) {

  }

  @override
  void increaseWater(int qte) {

  }

  @override
  void render(Canvas canvas) {
    purificationMachineSprite.renderRect(canvas, purificationMachineRect);
  }

  @override
  void update(double t) {

  }

  @override
  void updateConsumption() {

  }

}