import 'package:godeau/controller/consumer.dart';
import 'package:godeau/models/god_eau_game.dart';

class Farmer implements Consumer {
  @override
  int consumption;

  @override
  void updateConsumption() {
    // TODO: implement updateConsumption
  }

  @override
  int maxQte;

  @override
  int qte;

  @override
  void decreaseWater(int qte) {
    // TODO: implement decreaseWater
  }

  @override
  void increaseWater(int qte) {
    // TODO: implement increaseWater
  }

}