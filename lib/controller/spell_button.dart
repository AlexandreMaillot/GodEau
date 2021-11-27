
import 'package:flame/components/component.dart';
import 'package:flame/components/mixins/tapable.dart';
import 'package:flame/gestures.dart';
import 'package:flame/sprite.dart';
import 'package:flame/time.dart';
import 'package:flutter/material.dart';
import 'package:godeau/controller/pump_spell.dart';
import 'package:godeau/controller/rain_spell.dart';
import 'package:godeau/controller/sun_spell.dart';
import 'package:godeau/controller/water_purification_spell.dart';
import 'package:godeau/controller/water_treatment_spell.dart';
import 'package:godeau/controller/wind_spell.dart';
import 'package:godeau/models/god_eau_game.dart';


abstract class SpellButton extends SpriteComponent with Tapable {
  Icon icon;
  String name;
  bool state = false;
  int limitTime = 15;


  factory SpellButton({@required GodEauGame game,@required SpellType type,@required int buttonIndex}){
    switch(type){
      case SpellType.rain : return RainSpell(game: game,buttonIndex: buttonIndex );
      case SpellType.sun : return SunSpell(game: game, buttonIndex: buttonIndex);
      case SpellType.pump : return PumpSpell(game: game, buttonIndex: buttonIndex);
      case SpellType.waterPurification : return WaterPurificationSpell(game: game, buttonIndex: buttonIndex);
      case SpellType.waterTreatment : return WaterTreatmentSpell(game: game, buttonIndex: buttonIndex);
      case SpellType.wind : return WindSpell(game: game, buttonIndex: buttonIndex);
      default : return SunSpell(game: game, buttonIndex: buttonIndex);
    }
  }

  void update(double t) {

  }

  void render(Canvas canvas){

  }

}

enum SpellType {
  sun,
  rain,
  pump,
  waterPurification,
  waterTreatment,
  wind,
}