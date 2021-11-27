
import 'dart:ui';
import 'package:flame/flame.dart';
import 'package:flame/game/game.dart';
import 'package:flame/gestures.dart';
import 'package:godeau/models/background.dart';
import 'package:godeau/models/map.dart';
import 'game_environement.dart';



class GodEauGame extends Game with TapDetector{

  final GameEnvironnement environnement;
  Size screenSize;
  Background background;
  Map map;
  GodEauGame(this.environnement){
    initialize();
  }

  void initialize() async{
    resize(await Flame.util.initialDimensions());
    background = Background(game: this);
    map = Map(game: this);
  }

  @override
  void update(double t) {

  }

  @override
  void render(Canvas canvas){
    background.render(canvas);
    map.render(canvas);
  }

  @override
  void onTap() {
    super.onTap();
  }

  void resize(Size size){
    super.resize(size);
    screenSize = size;
  }

}