import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:flutter/src/widgets/icon.dart';
import 'package:godeau/controller/spell_button.dart';
import 'package:godeau/models/god_eau_game.dart';

class PumpSpell implements SpellButton{
  @override
  Icon icon;

  @override
  int limitTime;

  @override
  String name = 'Station de pompage';

  @override
  bool state;

  @override
  // TODO: implement game
  GodEauGame get game => throw UnimplementedError();

  Rect pumpSpellRect;
  Sprite pumpSpellSprite;

  PumpSpell({game}){
    //pumpSpellRect = Rect.fromLTWH(0, 0, 0, 0);
    //pumpSpellSprite = Sprite('fileName')
  }

  @override
  void render(Canvas canvas) {
    pumpSpellSprite.renderRect(canvas, pumpSpellRect);
  }

  @override
  void update(double t) {

  }

  @override
  void onTap() {

  }
}