
import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:flutter/src/widgets/icon.dart';
import 'package:godeau/controller/spell_button.dart';
import 'package:godeau/models/god_eau_game.dart';

class WindSpell implements SpellButton{
  @override
  Icon icon;

  @override
  int limitTime;

  @override
  String name = 'Vent';

  @override
  bool state;

  @override
  // TODO: implement game
  GodEauGame get game => throw UnimplementedError();

  Rect windSpellRect;
  Sprite windSpellSprite;

  WindSpell({game}){
    //windSpellRect = Rect.fromLTWH(0, 0, 0, 0);
    //windSpellSprite = Sprite('fileName')
  }
  @override
  void render(Canvas canvas) {
    windSpellSprite.renderRect(canvas, windSpellRect);
  }

  @override
  void update(double t) {

  }

  @override
  void onTap() {

  }

}