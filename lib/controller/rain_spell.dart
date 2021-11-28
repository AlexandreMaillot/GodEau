
import 'dart:ui';

import 'package:flame/anchor.dart';
import 'package:flame/components/component.dart';
import 'package:flame/components/mixins/tapable.dart';
import 'package:flame/effects/effects.dart';
import 'package:flame/position.dart';
import 'package:flame/sprite.dart';
import 'package:flame/text_config.dart';
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
  int limitTime = 15;

  @override
  String name = 'Pluie';

  @override
  bool state = false;

  @override
  // TODO: implement game

  Rect rainSpellRect;
  Sprite rainSpellSprite;
  List<Sprite> rainSpellSprites;
  int indexSprite = 0;
  @override
  Timer timer;
  final GodEauGame game;

  RainSpell({@required this.game,@required int buttonIndex}){
    WIDTH_BUTTON = game.screenSize.width * 0.1;
    HEIGHT_BUTTON = game.screenSize.height * 0.2;
    rainSpellRect = Rect.fromLTWH(buttonIndex * WIDTH_BUTTON + game.screenSize.width / 6.5, game.screenSize.height - 85, WIDTH_BUTTON,HEIGHT_BUTTON );
    rainSpellSprites = [Sprite("greyRainSpell.png"),Sprite("rainSpellButton.png")];
    timer = Timer(limitTime.toDouble(),repeat: true,callback:(){
      if(state == true){
        game.environnement.decreaseWaterQteFinal(10);
        game.environnement.decreaseEcosystemQteFinal(10);
      }
    });
    timer.start();
  }

  @override
  void onTap() {
    print("rain");
  }

  @override
  void render(Canvas canvas) {
    rainSpellSprite = rainSpellSprites[indexSprite];
    rainSpellSprite.renderRect(canvas, rainSpellRect);
  }

  @override
  void update(double t) {
    timer.update(t);
  }

  @override
  double heightButton;

  @override
  double withButton;

  @override
  bool checkTapOverlap(Offset o) {
    // TODO: implement checkTapOverlap
    throw UnimplementedError();
  }

  @override
  void handleTapCancel(int pointerId) {
    // TODO: implement handleTapCancel
  }

  @override
  void handleTapDown(int pointerId, TapDownDetails details) {
    // TODO: implement handleTapDown
  }

  @override
  void handleTapUp(int pointerId, TapUpDetails details) {
    // TODO: implement handleTapUp
  }

  @override
  void onTapCancel() {
    // TODO: implement onTapCancel
  }

  @override
  void onTapDown(TapDownDetails details) {
    if(!state) {

      if(game.wind.isActivated) {
        indexSprite = 1;
        game.farmer.updateConsumption(-2);
        game.resident.updateConsumption(-2);
        game.groundwaterTable.increaseWater(20);
        game.environnement.increaseEcosystemQteFinal(10);
        game.environnement.increaseWaterQteFinal(10);
        game.river.increaseWater(20);
        game.cloud.decreaseWater(20);
        game.wind.isActivated = false;
        game.cloud.isQteShow = true;
        game.listSpellButton[2].state = false;
        state = true;
      } else {
        game.environnement.decreaseEcosystemQteFinal(5);
        print("pas d'eau dans le nuage");
        state = false;
        indexSprite = 0;
      }

    } else {
      indexSprite = 0;
      game.farmer.updateConsumption(2);
      game.resident.updateConsumption(2);
      state = false;
    }
    update(1);

    print(state);
  }

  @override
  void onTapUp(TapUpDetails details) {
    // TODO: implement onTapUp
  }

  @override
  Iterable<Tapable> tapableChildren() {
    // TODO: implement tapableChildren
    throw UnimplementedError();
  }

  @override
  Rect toRect() {
    return rainSpellRect;
  }

  @override
  Anchor anchor;

  @override
  double angle;

  @override
  bool debugMode;

  @override
  double height;

  @override
  Paint overridePaint;

  @override
  bool renderFlipX;

  @override
  bool renderFlipY;

  @override
  Sprite sprite;

  @override
  double width;

  @override
  double x;

  @override
  double y;

  @override
  void addEffect(PositionComponentEffect effect) {
    // TODO: implement addEffect
  }

  @override
  double angleBetween(PositionComponent c) {
    // TODO: implement angleBetween
    throw UnimplementedError();
  }

  @override
  void clearEffects() {
    // TODO: implement clearEffects
  }

  @override
  // TODO: implement debugColor
  Color get debugColor => throw UnimplementedError();

  @override
  // TODO: implement debugTextConfig
  TextConfig get debugTextConfig => throw UnimplementedError();

  @override
  bool destroy() {
    // TODO: implement destroy
    throw UnimplementedError();
  }

  @override
  double distance(PositionComponent c) {
    // TODO: implement distance
    throw UnimplementedError();
  }

  @override
  bool isHud() {
    // TODO: implement isHud
    throw UnimplementedError();
  }

  @override
  bool loaded() {
    // TODO: implement loaded
    throw UnimplementedError();
  }

  @override
  void onDestroy() {
    // TODO: implement onDestroy
  }

  @override
  void onMount() {
    // TODO: implement onMount
  }

  @override
  void prepareCanvas(Canvas canvas) {
    // TODO: implement prepareCanvas
  }

  @override
  int priority() {
    // TODO: implement priority
    throw UnimplementedError();
  }

  @override
  void removeEffect(PositionComponentEffect effect) {
    // TODO: implement removeEffect
  }

  @override
  void renderDebugMode(Canvas canvas) {
    // TODO: implement renderDebugMode
  }

  @override
  void resize(Size size) {
    // TODO: implement resize
  }

  @override
  void setByPosition(Position position) {
    // TODO: implement setByPosition
  }

  @override
  void setByRect(Rect rect) {
    // TODO: implement setByRect
  }

  @override
  void setBySize(Position size) {
    // TODO: implement setBySize
  }

  @override
  Position toPosition() {
    // TODO: implement toPosition
    throw UnimplementedError();
  }

  @override
  Position toSize() {
    // TODO: implement toSize
    throw UnimplementedError();
  }

}