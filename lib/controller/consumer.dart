import 'dart:ui';

import 'package:godeau/models/farmer.dart';
import 'package:godeau/models/god_eau_game.dart';
import 'package:godeau/models/resident.dart';
import 'package:godeau/models/water.dart';

abstract class Consumer implements Water{
  int consumption;
  final GodEauGame game;

  Consumer({this.game}){

  }

  void update(double t) {

  }

  void render(Canvas canvas){

  }

  void updateConsumption() {

  }

}

