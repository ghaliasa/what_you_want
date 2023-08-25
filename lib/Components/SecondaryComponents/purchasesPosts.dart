import 'package:flutter/material.dart';
import 'package:what_you_want/Components/BasicComponents/myPostImagesListView.dart';

class PurchasesPosts extends StatelessWidget {
  final String salerName;
  final ImageProvider<Object> salerImage;
  final String date;
  final String postRate;

  final List<Widget> images;
  final String price;

  const PurchasesPosts({
    required this.salerName,
    required this.salerImage,
    required this.date,
    required this.postRate,
    required this.images,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.38,
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 57, 57, 57).withOpacity(0.5),
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
                    child: IconButton(
                      icon: Icon(Icons.check),
                      color: Colors.brown[100],
                      iconSize: MediaQuery.of(context).size.width * 0.07,
                      onPressed: () {},
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
                                  salerName,
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
                          backgroundImage: salerImage,
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
                  padding: EdgeInsets.all(
                    MediaQuery.of(context).size.height * 0.01,
                  ),
                  child: MyPostImagesListView(
                    images: images,
                  ),
                ),
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
                      // color: Colors.green,
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
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.03,
                      child: Text(
                        price,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.brown[100],
                          fontSize: MediaQuery.of(context).size.width * 0.04,
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
          ],
        ),
      ),
    );
  }
}
