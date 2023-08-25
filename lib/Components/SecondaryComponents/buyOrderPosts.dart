import 'package:flutter/material.dart';
import 'package:what_you_want/Components/BasicComponents/myDatePiece.dart';

class BuyOrderPosts extends StatefulWidget {
  final String date;
  final String productName;
  const BuyOrderPosts({
    required this.date,
    required this.productName,
  });

  @override
  _BuyOrderPostsState createState() => _BuyOrderPostsState();
}

class _BuyOrderPostsState extends State<BuyOrderPosts> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        key: ValueKey(2),
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.13,
          width: MediaQuery.of(context).size.width * 0.95,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 57, 57, 57).withOpacity(0.5),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              MyDatePiece(
                date: '14/12/2021',
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.048,
                      width: MediaQuery.of(context).size.width * 0.60,
                      child: Text(
                        widget.productName + ' :',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.brown[50],
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.02,
                      ),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.032,
                        width: MediaQuery.of(context).size.width * 0.07,
                        child: Icon(
                          Icons.local_offer,
                          size: MediaQuery.of(context).size.width * 0.05,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
