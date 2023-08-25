import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  final double height;
  final double width;
  final VoidCallback onPressed;
  final Color buttonColor;
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  const MyIconButton(
      {required this.height,
      required this.width,
      required this.onPressed,
      required this.buttonColor,
      required this.icon,
      required this.iconColor,
      required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: TextButton(
        onPressed: onPressed,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(
              child: Icon(
            icon,
            color: iconColor,
            size: iconSize,
          )),
        ),
      ),
    );
  }
}
