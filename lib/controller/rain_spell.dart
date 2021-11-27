
import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:flame/time.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/icon.dart';
import 'package:godeau/models/god_eau_game.dart';
import 'package:godeau/controller/spell_button.dart';



class RainSpell implements SpellButton{
  double WIDTH_BUTTON = 0;
  double HEIGHT_BUTTON = 0;
  @override
  Icon icon;

  @override
  int limitTime;

  @override
  String name = 'Pluie';

  @override
  bool state;

  @override
  // TODO: implement game

  Rect rainSpellRect;
  Sprite rainSpellSprite;
  final GodEauGame game;
  RainSpell({@required this.game,@required int buttonIndex}){
    WIDTH_BUTTON = game.screenSize.width * 0.1;
    HEIGHT_BUTTON = game.screenSize.height * 0.2;
    rainSpellRect = Rect.fromLTWH(buttonIndex * WIDTH_BUTTON + game.screenSize.width / 5, game.screenSize.height - 85, WIDTH_BUTTON,HEIGHT_BUTTON );
    rainSpellSprite = Sprite('sun.png');
  }

  @override
  void onTap() {

  }

  @override
  void render(Canvas canvas) {
    rainSpellSprite.renderRect(canvas, rainSpellRect);
  }

  @override
  void update(double t) {

  }

  @override
  double heightButton;

  @override
  double withButton;

}