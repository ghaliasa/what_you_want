import 'package:flutter/material.dart';
import 'package:what_you_want/Components/BasicComponents/myPostImagesListView.dart';

class SaledPost extends StatelessWidget {
  final String buyerName; ///// userModel
  final ImageProvider<Object> buyerImage; ///// userModel
  final String date;
  final String postRate;

  final List<Widget> images;
  final String productStatus;
  final String price;

  const SaledPost(
      {required this.buyerName,
      required this.date,
      required this.images,
      required this.productStatus,
      required this.price,
      required this.buyerImage,
      required this.postRate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.43,
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 57, 57, 57).withOpacity(0.9),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.02,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.15,
                    child: Icon(
                      Icons.check,
                      color: Colors.brown[100],
                      size: MediaQuery.of(context).size.width * 0.07,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.005,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.02,
                          ),
                          child: Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Text(
                                  buyerName,
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.05,
                                    color: Colors.brown[100],
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Text(
                                  date,
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    color: Colors.brown[100],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.brown[100],
                          radius: MediaQuery.of(context).size.width * 0.05,
                          backgroundImage: buyerImage,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.80,
                child: Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
                  child: MyPostImagesListView(
                    images: images,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          postRate,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.brown[100],
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.20,
                  child: Center(
                    child: Text(
                      productStatus,
                      style: TextStyle(color: Colors.yellow[200], fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.price_change,
                  color: Colors.yellow[200],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    price,
                    style: TextStyle(
                      color: Colors.brown[100],
                      fontSize: MediaQuery.of(context).size.width * 0.045,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
