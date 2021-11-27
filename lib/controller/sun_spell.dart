
import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:flame/time.dart';
import 'package:flutter/src/widgets/icon.dart';
import 'package:godeau/models/god_eau_game.dart';
import 'package:godeau/controller/spell_button.dart';

class SunSpell implements SpellButton{
  @override
  Icon icon;

  @override
  int limitTime;

  @override
  String name = 'Soleil';

  @override
  bool state;

  @override
  // TODO: implement game
  GodEauGame get game => throw UnimplementedError();

  Rect sunSpellRect;
  Sprite sunSpellSprite;

  SunSpell({game}){
    //sunSpellRect = Rect.fromLTWH(0, 0, 0, 0);
    //sunSpellSprite = Sprite('fileName')
  }
  @override
  void onTap() {

  }

  @override
  void render(Canvas canvas) {
    sunSpellSprite.renderRect(canvas, sunSpellRect);
  }

  @override
  void update(double t) {

  }

}