import 'package:flutter/material.dart';

class MyDrawerButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String text;
  const MyDrawerButton(
      {required this.onPressed, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Center(
              child: Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          Container(
            child: Icon(
              icon,
              color: Colors.white,
              size: 35,
            ),
          )
        ],
      ),
    );
  }
}
