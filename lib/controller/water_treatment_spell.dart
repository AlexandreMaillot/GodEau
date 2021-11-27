import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/icon.dart';
import 'package:godeau/controller/spell_button.dart';
import 'package:godeau/models/god_eau_game.dart';

class WaterTreatmentSpell implements SpellButton{
  double WIDTH_BUTTON = 0;
  double HEIGHT_BUTTON = 0;

  @override
  Icon icon;

  @override
  int limitTime;

  @override
  String name = 'Traitement des eaux usées';

  @override
  bool state;

  final GodEauGame game;

  Rect waterTreatmentSpellRect;
  Sprite waterTreatmentSpellSprite;

  WaterTreatmentSpell({@required this.game,int buttonIndex}){
    WIDTH_BUTTON = game.screenSize.width * 0.1;
    HEIGHT_BUTTON = game.screenSize.height * 0.2;
    waterTreatmentSpellRect = Rect.fromLTWH(buttonIndex * WIDTH_BUTTON + game.screenSize.width / 5, game.screenSize.height - 85, WIDTH_BUTTON, HEIGHT_BUTTON);
    waterTreatmentSpellSprite = Sprite("sunSpellButton.png");
  }

  @override
  void render(Canvas canvas) {
    WIDTH_BUTTON = game.screenSize.width * 0.1;
    HEIGHT_BUTTON = game.screenSize.height * 0.2;
    waterTreatmentSpellSprite.renderRect(canvas, waterTreatmentSpellRect);
  }

  @override
  void update(double t) {

  }

  @override
  void onTap() {
    print("water treatment");
  }

  @override
  double heightButton;

  @override
  double withButton;

}