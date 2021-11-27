
import 'dart:ui';
import 'package:flame/flame.dart';
import 'package:flame/game/game.dart';
import 'package:flame/gestures.dart';
import 'game_environement.dart';



abstract class GodEauGame extends Game with TapDetector{

  final GameEnvironnement environnement;
  Size screenSize;

  GodEauGame(this.environnement){
    initialize();
  }

  void initialize() async{
    resize(await Flame.util.initialDimensions());
  }

  @override
  void update(double t) {

  }

  @override
  void render(Canvas canvas){

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