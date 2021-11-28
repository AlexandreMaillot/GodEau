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
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Home()),
            );
          },
          child: Text("START"),
        ),
      )
    );
  }
}