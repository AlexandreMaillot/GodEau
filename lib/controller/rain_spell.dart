
import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:flame/time.dart';
import 'package:flutter/src/widgets/icon.dart';
import 'package:godeau/models/god_eau_game.dart';
import 'package:godeau/models/spell_button.dart';

class RainSpell implements SpellButton{

  @override
  Icon icon;

  @override
  int limitTime = 15;

  @override
  String name = 'Pluie';

  @override
  bool state = false;

  @override
  // TODO: implement game
  GodEauGame get game => throw UnimplementedError();

  Rect rainSpellRect;
  Sprite rainSpellSprite;

  RainSpell(game){
    //rainSpellRect = Rect.fromLTWH(0, 0, 0, 0);
    //rainSpellSprite = Sprite('fileName')
  }

  @override
  void onTap() {
    // TODO: implement onTap
  }

  @override
  void render(Canvas canvas) {
    rainSpellSprite.renderRect(canvas, rainSpellRect);
  }

  @override
  void update(double t) {

  }



}