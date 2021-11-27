import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:godeau/controller/consumer.dart';
import 'package:godeau/models/god_eau_game.dart';

class PurificationMachine implements Consumer{
  @override
  int consumption;

  @override
  int maxQte = 10;

  @override
  int qte = 0;

  final GodEauGame game;

  Rect purificationMachineRect;
  Sprite purificationMachineSprite;

  PurificationMachine({this.game}){
  purificationMachineRect = Rect.fromLTWH(game.screenSize.width/2.2, game.screenSize.height - game.screenSize.height/2.2, 80, 80);
  purificationMachineSprite = Sprite('epuration.png');
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