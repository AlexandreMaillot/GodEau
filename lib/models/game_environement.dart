
import 'package:flutter/cupertino.dart';
import 'package:godeau/models/end_game.dart';

class GameEnvironnement{

  int waterQteStart = 50;
  int waterQteMax = 50;
  int ecosytemQteStart = 50;
  int ecosystemQteMax = 50;
  int timeLimit = 200;
  bool haveLose = false;
  bool haveWin = false;

  GameEnvironnement({@required waterQteStart,@required ecosytemQteStart,@required timeLimit}){
    waterQteStart = waterQteStart;
    ecosytemQteStart = ecosytemQteStart;
    timeLimit = timeLimit;
  }

  void increaseWaterQteFinal(int qte){
    if(waterQteStart + qte > waterQteMax){
      waterQteStart = waterQteMax;
    } else {
      waterQteStart += qte;
    }
  }

  void decreaseWaterQteFinal(int qte){
    if(waterQteStart - qte <= 0){
      print("lose");
      haveLose = true;
    } else {
      waterQteStart -= qte;
    }
  }

  void increaseEcosystemQteFinal(int qte){
    if(ecosytemQteStart + qte > ecosystemQteMax){
      ecosytemQteStart = ecosystemQteMax;
    } else {
      ecosytemQteStart += qte;
    }
  }

  void decreaseEcosystemQteFinal(int qte){
    if(ecosytemQteStart - qte <= 0){
      print("lose");
      haveLose = true;
    } else {
      ecosytemQteStart -= qte;
    }

  }
}