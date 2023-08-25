import 'package:flutter/material.dart';
import 'package:what_you_want/Components/BasicComponents/MyPopUpMenuButton.dart';
import 'package:what_you_want/Components/BasicComponents/myDatePiece.dart';
import 'package:what_you_want/Components/BasicComponents/myPostImagesListView.dart';

class InProgressSalePosts extends StatefulWidget {
  final String date;
  final String postRate;
  final List<Widget> images;
  final String productStatus;
  final String price;
  const InProgressSalePosts(
      {required this.date,
      required this.postRate,
      required this.images,
      required this.productStatus,
      required this.price});

  @override
  _InProgressSalePostsState createState() => _InProgressSalePostsState();
}

class _InProgressSalePostsState extends State<InProgressSalePosts> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        key: ValueKey(2),
        padding: EdgeInsets.all(10),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.55,
          width: MediaQuery.of(context).size.width * 0.95,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 57, 57, 57).withOpacity(0.9),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Column(
            children: [
              MyDatePiece(
                date: '14/12/2021',
              ),
              Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
                child: MyPostImagesListView(
                  images: widget.images,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star_border,
                        color: Colors.yellow[200],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            widget.postRate,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.brown[100],
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            widget.price,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.brown[100],
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      Icon(
                        Icons.price_change,
                        color: Colors.yellow[200],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.80,
                child: Center(
                  child: Text(
                    widget.productStatus,
                    style: TextStyle(
                      color: Colors.yellow[200],
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              MyPopUpMenuButton(),
            ],
          ),
        ),
      ),
    );
  }
}
