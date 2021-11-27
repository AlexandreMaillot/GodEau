import 'dart:io';

import 'package:flutter/material.dart';
import 'package:godeau/constant.dart';
// import 'package:godeau/controller/level_button.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(204, 225, 216, 1),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(1),
            child: IconButton(
                iconSize: 60,
                onPressed: () {},
                icon: Icon(Icons.settings,color: Colors.white,)
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/iconBackground.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: listMenuLevel,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: IconButton(
              iconSize: 60,
                onPressed: () {return exit(0);},
                icon: Icon(Icons.clear_rounded,color: Colors.white,)

            ),
          ),
        ],
      ),
    );
  }
}
