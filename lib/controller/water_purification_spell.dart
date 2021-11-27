import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:flutter/src/widgets/icon.dart';
import 'package:godeau/controller/spell_button.dart';
import 'package:godeau/models/god_eau_game.dart';

class WaterPurificationSpell implements SpellButton{
  @override
  Icon icon;

  @override
  int limitTime;

  @override
  String name = 'Station épuration';

  @override
  bool state;

  @override
  // TODO: implement game
  GodEauGame get game => throw UnimplementedError();

  Rect waterPurificationSpellRect;
  Sprite waterPurificationSpellSprite;

  WaterPurificationSpell({game}){
    //waterPurificationSpellRect = Rect.fromLTWH(0, 0, 0, 0);
    //waterPurificationSpellSprite = Sprite('fileName')
  }

  @override
  void render(Canvas canvas) {
    waterPurificationSpellSprite.renderRect(canvas, waterPurificationSpellRect);
  }

  @override
  void update(double t) {

  }

  @override
  void onTap() {

  }
}