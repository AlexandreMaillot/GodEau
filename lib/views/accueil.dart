import 'package:flame/flame_audio.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Accueil extends StatefulWidget {
  Accueil({Key key}) : super(key: key);

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(204, 225, 216, 1),
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Home()),
            );
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/startGame.png"),
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }

  Column buildColumn(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/logo.png"),
        TextButton(
          onPressed: (){

            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Home()),
            );
          },
          child: Text("APPUYER POUR JOUER",style: TextStyle(
            fontSize: 43,
            fontFamily: "god_eau_font",
            color: Color.fromRGBO(255, 241, 155, 1),
          ),),
        ),
      ],
    );
  }
}

