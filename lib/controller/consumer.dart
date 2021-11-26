import 'package:godeau/models/farmer.dart';
import 'package:godeau/models/god_eau_game.dart';
import 'package:godeau/models/resident.dart';
import 'package:godeau/models/water.dart';

abstract class Consumer implements Water{
  int consumption = 1;
  void updateConsumption();

  factory Consumer(ConsumerType type) {
    switch(type) {
      case ConsumerType.resident : return Resident();
      case ConsumerType.farmer : return Farmer();
     default: return Resident();
    }
  }
}

enum ConsumerType {
  resident,
  farmer,
}