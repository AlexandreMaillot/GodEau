import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:godeau/controller/consumer.dart';
import 'package:godeau/models/god_eau_game.dart';

class Resident implements Consumer {
  @override
  int consumption = 3;

  @override
  int maxQte;

  @override
  int qte;

  final GodEauGame game;

  Rect residentRect;
  Sprite residentSprite;

  Resident({this.game}){
    residentRect = Rect.fromLTWH(game.screenSize.width/2.9, game.screenSize.height - game.screenSize.height/2, 90, 90);
    residentSprite = Sprite('resident.png');
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
    residentSprite.renderRect(canvas, residentRect);
  }

  @override
  void update(double t) {

  }

  @override
  void updateConsumption(int qte) {
    if(sufficientConsuption(qte)) {
      consumption = 1;
    } else {
      consumption += qte;
    }
    print(consumption);
  }

  bool sufficientConsuption(int qte) => qte + consumption < 1;


}