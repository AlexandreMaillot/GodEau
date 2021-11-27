
import 'dart:ui';
import 'package:flame/flame.dart';
import 'package:flame/game/game.dart';
import 'package:flame/gestures.dart';
import 'package:godeau/controller/rain_spell.dart';
import 'package:godeau/controller/spell_button.dart';
import 'package:godeau/controller/sun_spell.dart';
import 'package:godeau/models/background.dart';
import 'package:godeau/models/groundwater_table.dart';
import 'package:godeau/models/map.dart';
import 'package:godeau/models/pump.dart';
import 'package:godeau/models/purification_machine.dart';
import 'package:godeau/models/resident.dart';
import 'package:godeau/models/river.dart';
import 'package:godeau/models/water_treatment_machine.dart';
import 'cloud.dart';
import 'farmer.dart';
import 'game_environement.dart';



class GodEauGame extends Game with TapDetector{

  final GameEnvironnement environnement;
  Size screenSize;

  Background background;
  Map map;
  SunSpell sunSpell;
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
    // sunSpell = SunSpell(game: this);
  }

  @override
  void update(double t) {

  }

  @override
  void render(Canvas canvas){
    background.render(canvas);
    map.render(canvas);
    cloud.render(canvas);
    farmer.render(canvas);
    groundwaterTable.render(canvas);
    pump.render(canvas);
    purificationMachine.render(canvas);
    waterTreatmentMachine.render(canvas);
    resident.render(canvas);
    river.render(canvas);
    // sunSpell.render(canvas);
    listSpellButton.forEach((spellButton) {
      spellButton.render(canvas);
    });

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
