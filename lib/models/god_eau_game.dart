

import 'dart:ui';
import 'package:flame/anchor.dart';
import 'package:flame/components/mixins/tapable.dart';
import 'package:flame/flame.dart';
import 'package:flame/game/game.dart';
import 'package:flame/gestures.dart';
import 'package:flame/position.dart';
import 'package:flame/text_config.dart';
import 'package:flame/time.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:godeau/controller/rain_spell.dart';
import 'package:godeau/controller/spell_button.dart';
import 'package:godeau/controller/sun_spell.dart';
import 'package:godeau/models/background.dart';
import 'package:godeau/models/droplet_icon.dart';
import 'package:godeau/models/evaporation.dart';
import 'package:godeau/models/groundwater_table.dart';
import 'package:godeau/models/map.dart';
import 'package:godeau/models/pump.dart';
import 'package:godeau/models/purification_machine.dart';
import 'package:godeau/models/resident.dart';
import 'package:godeau/models/river.dart';
import 'package:godeau/models/tree_icon.dart';
import 'package:godeau/models/water_treatment_machine.dart';
import 'package:godeau/models/wind.dart';
import 'cloud.dart';
import 'end_game.dart';
import 'farmer.dart';
import 'game_environement.dart';
import 'hourglass.dart';



class GodEauGame extends Game with TapDetector{

  final GameEnvironnement environnement;
  Size screenSize;
  TextConfig qteOfAllelements;
  TextConfig timeTextConfig;

  Background background;
  Map map;
  // SunSpell sunSpell;
  List<SpellButton> listSpellButton = [];
  GodEauGame(this.environnement){
    initialize();

  }
  Cloud cloud;
  Farmer farmer;
  GroundwaterTable groundwaterTable;
  Pump pump;
  PurificationMachine purificationMachine;
  WaterTreatmentMachine waterTreatmentMachine;
  Resident resident;
  River river;
  Wind wind;
  Evaporation evaporation;
  DropletIcon dropletIcon;
  TreeIcon treeIcon;
  HourGlass hourGlass;
  EndGame endGame;
  Timer timer;

  void initialize() async{
    resize(await Flame.util.initialDimensions());
    background = Background(game: this);
    map = Map(game: this);
    cloud = Cloud(game: this);
    farmer = Farmer(game:this);
    groundwaterTable = GroundwaterTable(game: this);
    pump = Pump(game: this);
    purificationMachine = PurificationMachine(game: this);
    waterTreatmentMachine = WaterTreatmentMachine(game: this);
    resident = Resident(game: this);
    river = River(game: this);
    listSpellButton.add(SpellButton(game: this,type: SpellType.sun,buttonIndex: 0));
    listSpellButton.add(SpellButton(game: this,type: SpellType.rain,buttonIndex: 1));
    listSpellButton.add(SpellButton(game: this,type: SpellType.wind,buttonIndex: 2));
    listSpellButton.add(SpellButton(game: this,type: SpellType.waterTreatment,buttonIndex: 3));
    listSpellButton.add(SpellButton(game: this,type: SpellType.waterPurification,buttonIndex: 4));
    listSpellButton.add(SpellButton(game: this,type: SpellType.pump,buttonIndex: 5));
    listSpellButton.add(SpellButton(game: this,type: SpellType.field,buttonIndex: 6));
    // sunSpell = SunSpell(game: this);
    wind = Wind(game: this);
    evaporation = Evaporation(game:this);
    dropletIcon = DropletIcon(game: this);
    treeIcon = TreeIcon(game: this);
    hourGlass = HourGlass(game: this);
    endGame = EndGame(game: this,indexSprite: 0);
    timer = Timer(1,repeat: true,callback:(){
      environnement.timeLimit -= 1;
      if(environnement.timeLimit == 0){
        environnement.haveWin = true;
      }
    });
    timer.start();
    qteOfAllelements = TextConfig(
      fontSize: 20,
      fontFamily: 'god_eau_font',
      color: Colors.blueAccent,
    );
    timeTextConfig = TextConfig(
      fontSize: 20,
      fontFamily: 'god_eau_font',
      color: Colors.blueGrey,
    );
  }

  @override
  void update(double t) {
    callTimers(t);
  }

  @override
  void render(Canvas canvas){
    background.render(canvas);
    map.render(canvas);
    if(environnement.haveLose == true){
      endGame.indexSprite = 0;
      endGame.render(canvas);
    }else if(environnement.haveWin == true){
      endGame.indexSprite = 1;
      endGame.render(canvas);
    }else{
      showAllElements(canvas);
      // sunSpell.render(canvas);
      listSpellButton.forEach((spellButton) {
        spellButton.render(canvas);
      });
      showQteOfAllElements(canvas);
      showAllConsumptions(canvas);
    }

  }

  @override
  void onTap() {
    super.onTap();
  }
  void onTapDown(TapDownDetails d) {
    listSpellButton.forEach((spellButton) {
      if(spellButton.toRect().contains(d.globalPosition)) {
        spellButton.onTapDown(d);
      }
    });

  }
  void resize(Size size){
    super.resize(size);
    screenSize = size;
  }

  void showQteOfAllElements(Canvas canvas){
    if(cloud.isQteShow == true){
      qteOfAllelements.render(canvas,cloud.qte.toString() + '/' + cloud.maxQte.toString(), Position(screenSize.width - screenSize.width/4.5, screenSize.height/8));
    }
    qteOfAllelements.render(canvas,purificationMachine.qte.toString() + '/' + purificationMachine.maxQte.toString(), Position(screenSize.width/2.1, screenSize.height - screenSize.height/2.1));
    qteOfAllelements.render(canvas,waterTreatmentMachine.qte.toString() + '/' + waterTreatmentMachine.maxQte.toString(), Position(screenSize.width/3.8, screenSize.height - screenSize.height/1.95));
    qteOfAllelements.render(canvas,river.qte.toString() + '/' + river.maxQte.toString(), Position(screenSize.width/3.5, screenSize.height - screenSize.height/1.65));
    qteOfAllelements.render(canvas,pump.qte.toString() + '/' + pump.maxQte.toString(), Position(screenSize.width/7.2, screenSize.height - screenSize.height/1.7));
    qteOfAllelements.render(canvas,groundwaterTable.qte.toString() + '/' + groundwaterTable.maxQte.toString(), Position(screenSize.width/8.5, screenSize.height - screenSize.height/3));
    qteOfAllelements.render(canvas,environnement.waterQteStart.toString() + '/' + environnement.waterQteMax.toString(), Position(screenSize.width/100 , screenSize.height/35));
    qteOfAllelements.render(canvas,environnement.ecosytemQteStart.toString() + '/' + environnement.ecosystemQteMax.toString(), Position(screenSize.width/7 , screenSize.height/35));
  }
  void showAllElements(Canvas canvas){
    cloud.render(canvas);
    farmer.render(canvas);
    groundwaterTable.render(canvas);
    pump.render(canvas);
    purificationMachine.render(canvas);
    waterTreatmentMachine.render(canvas);
    resident.render(canvas);
    river.render(canvas);
    if(evaporation.isEvaporing == true){
      evaporation.render(canvas);
    }
    if(wind.isActivated == true){
      wind.render(canvas);
    }
    dropletIcon.render(canvas);
    treeIcon.render(canvas);
    hourGlass.render(canvas);
    timeTextConfig.render(canvas,environnement.timeLimit.toString() + ' sec', Position(screenSize.width - screenSize.width/7, screenSize.height/30));
  }

  void showAllConsumptions(Canvas canvas){
    qteOfAllelements.render(canvas,resident.consumption.toString() + '/5sec', Position(screenSize.width/2.7, screenSize.height - screenSize.height/1.85));
    qteOfAllelements.render(canvas,farmer.consumption.toString() + '/5sec', Position(screenSize.width/2, screenSize.height/13));
  }

  void callTimers(double t){
    timer.update(t);
    resident.update(t);
    farmer.update(t);
    listSpellButton.forEach((spellButton) {
      if(spellButton.state == true){
        spellButton.timer.update(t);
      }
    });
  }

}
