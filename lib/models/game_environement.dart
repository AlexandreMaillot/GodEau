
import 'package:flutter/cupertino.dart';

class GameEnvironnement{

  int waterQteStart = 50;
  int waterQteMax = 50;
  int ecosytemQteStart = 50;
  int ecosystemQteMax = 50;

  GameEnvironnement({@required waterQteStart,@required ecosytemQteStart}){
    waterQteStart = waterQteStart;
    ecosytemQteStart = ecosytemQteStart;
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
    } else {
      ecosytemQteStart -= qte;
    }

  }
}