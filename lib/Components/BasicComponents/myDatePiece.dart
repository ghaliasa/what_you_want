import 'package:flutter/material.dart';

class MyDatePiece extends StatelessWidget {
  final String date;
  const MyDatePiece({required this.date});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        MediaQuery.of(context).size.width * 0.02,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.04,
            width: MediaQuery.of(context).size.width * 0.25,
            child: Center(
              child: Text(
                date,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                  color: Colors.brown[100],
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.04,
            width: MediaQuery.of(context).size.width * 0.25,
            child: Center(
              child: Text(
                ": تاريخ النشر",
                style: TextStyle(
                  color: Colors.brown[100],
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
