import 'package:flutter/material.dart';
import 'package:what_you_want/Components/BasicComponents/myColoredButton.dart';
import 'package:what_you_want/Components/BasicComponents/myPopUpMenuButton.dart';
import 'package:what_you_want/Components/BasicComponents/myPostImagesListView.dart';
import 'package:what_you_want/Components/SecondaryComponents/postContainer.dart';
import 'package:what_you_want/Components/SecondaryComponents/postList.dart';
import 'package:what_you_want/Providers/provider.dart';
import 'package:provider/provider.dart';

class PostContent extends StatefulWidget {
  final String userName;
  final List<Widget> postImage;
  final String postContent;
  final String price;
  final String rate;
  final String userImage;
  final VoidCallback onPressed;
  const PostContent(
      {required this.userName,
      required this.postImage,
      required this.postContent,
      required this.price,
      required this.rate,
      required this.userImage,
      required this.onPressed});

  @override
  State<PostContent> createState() => _PostContentState();
}

class _PostContentState extends State<PostContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
          ),
          Padding(
            key: ValueKey(2),
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.76,
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 57, 57, 57).withOpacity(0.9),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow[200],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Container(
                            child: Center(
                              child: Text(
                                widget.rate,
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
                      Padding(
                        padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.01,
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
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    child: Text(
                                      'غالية محمد الصباغ',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.048,
                                        color: Colors.brown[100],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    child: Text(
                                      "12/1/2001",
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
                              backgroundImage: AssetImage(
                                widget.userImage,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  MyPostImagesListView(
                    images: widget.postImage,
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
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                widget.rate,
                                style: TextStyle(
                                  color: Colors.brown[100],
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.03,
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                widget.price,
                                style: TextStyle(
                                  color: Colors.brown[100],
                                  fontSize: 15,
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
                    width: MediaQuery.of(context).size.width * 0.80,
                    child: Center(
                      child: Text(
                        widget.postContent,
                        style: TextStyle(
                          color: Colors.yellow[200],
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  MyPopUpMenuButton(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  MyColoredButton(
                    buttonColor: Colors.brown[100]!,
                    height: MediaQuery.of(context).size.height * 0.08,
                    onPressed: () {},
                    text: 'تثبيت',
                    textColor: Colors.black54,
                    textSize: 25,
                    width: MediaQuery.of(context).size.width * 0.45,
                  ),
                  Consumer<Providerf>(
                    builder: (context, provider, child) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        child: IconButton(
                          onPressed: () {
                            provider.change(
                              PostList(
                                scrollDirection: Axis.horizontal,
                                listContent: [
                                  PostContainer(
                                    userName: 'غالية الصباغ',
                                    postImage: 'images/furniture.jpg',
                                    rate: '20',
                                    postContent: 'بيع مباشر',
                                    price: '6',
                                    userImage: 'images/profile picture.jpg',
                                  ),
                                  PostContainer(
                                    userName: 'غالية الصباغ',
                                    postImage: 'images/furniture.jpg',
                                    rate: '18',
                                    postContent: 'بيع مباشر',
                                    price: '1',
                                    userImage: 'images/profile picture.jpg',
                                  ),
                                  PostContainer(
                                    userName: 'غالية الصباغ',
                                    postImage: 'images/furniture.jpg',
                                    rate: '18',
                                    postContent: 'بيع مباشر',
                                    price: '10',
                                    userImage: 'images/profile picture.jpg',
                                  ),
                                  PostContainer(
                                    userName: 'غالية الصباغ',
                                    postImage: 'images/furniture.jpg',
                                    rate: '18',
                                    postContent: 'بيع مباشر',
                                    price: '8',
                                    userImage: 'images/profile picture.jpg',
                                  ),
                                  PostContainer(
                                    userName: 'غالية الصباغ',
                                    postImage: 'images/furniture.jpg',
                                    rate: '18',
                                    postContent: 'بيع مباشر',
                                    price: '10',
                                    userImage: 'images/profile picture.jpg',
                                  ),
                                ],
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.close,
                            size: 30,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
