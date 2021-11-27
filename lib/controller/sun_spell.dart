
import 'dart:ui';

import 'package:flame/components/mixins/tapable.dart';
import 'package:flame/sprite.dart';
import 'package:flame/time.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/icon.dart';
import 'package:godeau/models/god_eau_game.dart';
import 'package:godeau/controller/spell_button.dart';


class SunSpell implements SpellButton {

  double WIDTH_BUTTON = 0;
  double HEIGHT_BUTTON = 0;
  @override
  Icon icon;

  @override
  int limitTime;

  @override
  String name = 'Soleil';

  @override
  bool state;

  final GodEauGame game;
  // GodEauGame gamde;
  Rect sunSpellRect;
  Sprite sunSpellSprite;

  SunSpell({@required this.game,@required int buttonIndex}){
    WIDTH_BUTTON = game.screenSize.width * 0.1;
    HEIGHT_BUTTON = game.screenSize.height * 0.2;
    sunSpellRect = Rect.fromLTWH(buttonIndex * WIDTH_BUTTON + game.screenSize.width / 5, game.screenSize.height - 85, game.screenSize.width * 0.1, game.screenSize.height * 0.2);
    sunSpellSprite = Sprite("sunSpellButton.png");
  }
  @override
  void onTap() {
    print("sun");
  }

  @override
  void render(Canvas canvas) {
    sunSpellSprite.renderRect(canvas, sunSpellRect);
  }

  @override
  void update(double t) {

  }

  @override
  double heightButton;

  @override
  double withButton;

}