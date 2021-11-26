import 'package:flutter/material.dart';
import 'package:godeau/controller/level_button.dart';

class MenuLevelButton extends StatelessWidget {
  String text;
  VoidCallback onPressed;
  MenuLevelButton({Key key,this.text,this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 70,
      child: LevelButton(
        child: Text(text,style: TextStyle(fontSize: 50),),
        onPressed: onPressed,
      ),
    );
  }
}
