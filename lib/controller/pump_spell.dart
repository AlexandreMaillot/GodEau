import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/icon.dart';
import 'package:godeau/controller/spell_button.dart';
import 'package:godeau/models/god_eau_game.dart';

class PumpSpell implements SpellButton{
  double WIDTH_BUTTON = 0;
  double HEIGHT_BUTTON = 0;
  @override
  Icon icon;

  @override
  int limitTime;

  @override
  String name = 'Station de pompage';

  @override
  bool state;

  final GodEauGame game;

  Rect pumpSpellRect;
  Sprite pumpSpellSprite;

  PumpSpell({@required this.game,@required int buttonIndex}){
    WIDTH_BUTTON = game.screenSize.width * 0.1;
    HEIGHT_BUTTON = game.screenSize.height * 0.2;
    pumpSpellRect = Rect.fromLTWH(buttonIndex * WIDTH_BUTTON + game.screenSize.width / 5, game.screenSize.height - 85, WIDTH_BUTTON, HEIGHT_BUTTON);
    pumpSpellSprite = Sprite("sun.png");
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

  @override
  double heightButton;

  @override
  double withButton;
}