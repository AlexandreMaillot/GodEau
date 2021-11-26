import 'package:flutter/material.dart';
import 'package:godeau/constant.dart';

class LevelButton extends ElevatedButton {
  LevelButton({
    @required Widget child,
    Icon icon,
    @required VoidCallback onPressed,
  }) : super(
    style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          )
      ),
      backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
    ),
    onPressed: onPressed,
    child: child,
  );

}