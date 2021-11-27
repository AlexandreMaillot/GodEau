
import 'package:flame/gestures.dart';
import 'package:flame/sprite.dart';
import 'package:flame/time.dart';
import 'package:flutter/material.dart';
import 'package:godeau/controller/rain_spell.dart';
import 'package:godeau/models/god_eau_game.dart';

abstract class SpellButton{
  Icon icon;
  String name;
  bool state;
  int limitTime;
  final GodEauGame game;

  SpellButton(this.game){

  }

  void update(double t) {

  }

  void render(Canvas canvas){

  }

  void onTap(){

  }
}

enum SpellButtonType {
  rain,
}