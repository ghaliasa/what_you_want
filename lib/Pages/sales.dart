import 'package:flutter/material.dart';
import 'package:what_you_want/Components/BasicComponents/myBar.dart';
import 'package:what_you_want/Components/BasicComponents/myDrawer.dart';
import 'package:what_you_want/Components/BasicComponents/myPostImage.dart';
import 'package:what_you_want/Components/SecondaryComponents/inProgressSalePosts.dart';
import 'package:what_you_want/Components/SecondaryComponents/notSaledPost.dart';
import 'package:what_you_want/Components/SecondaryComponents/postList.dart';
import 'package:what_you_want/Components/SecondaryComponents/saledPost.dart';

class Sales extends StatefulWidget {
  static final String id = "purchases";
  const Sales();

  @override
  State<Sales> createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // extendBodyBehindAppBar: true,
        backgroundColor: Colors.brown[100],
        appBar: MyBar(
          isHome: false,
          type: "",
          onPressed: () {},
          tabs: TabBar(
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                child: Text(
                  "قيد البيع",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "المباع",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "غير مباع",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          title: '',
        ),
        endDrawer: MyDrawer(),

        body: TabBarView(
          children: [
            PostList(
              scrollDirection: Axis.vertical,
              listContent: [
                InProgressSalePosts(
                  date: "12/12/2011",
                  images: [
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                  ],
                  postRate: "12",
                  price: "200",
                  productStatus: "بيع مباشر",
                ),
                InProgressSalePosts(
                  date: "12/12/2011",
                  images: [
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                  ],
                  postRate: "12",
                  price: "200",
                  productStatus: "بيع مباشر",
                ),
                InProgressSalePosts(
                  date: "12/12/2011",
                  images: [
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                  ],
                  postRate: "12",
                  price: "200",
                  productStatus: "بيع مباشر",
                ),
                InProgressSalePosts(
                  date: "12/12/2011",
                  images: [
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                  ],
                  postRate: "12",
                  price: "200",
                  productStatus: "بيع مباشر",
                ),
              ],
            ),
            PostList(
              scrollDirection: Axis.vertical,
              listContent: [
                SaledPost(
                  productStatus: 'بيع مباشر',
                  buyerName: 'غالية الصباغ',
                  date: '15/12/2021',
                  postRate: '15',
                  price: '500',
                  buyerImage: AssetImage('images/profile picture.jpg'),
                  images: [
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                  ],
                ),
                SaledPost(
                  productStatus: 'بيع مباشر',
                  buyerName: 'غالية الصباغ',
                  date: '15/12/2021',
                  postRate: '15',
                  price: '500',
                  buyerImage: AssetImage('images/profile picture.jpg'),
                  images: [
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                  ],
                ),
                SaledPost(
                  productStatus: 'بيع مباشر',
                  buyerName: 'غالية الصباغ',
                  date: '15/12/2021',
                  postRate: '15',
                  price: '500',
                  buyerImage: AssetImage('images/profile picture.jpg'),
                  images: [
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                  ],
                ),
                SaledPost(
                  productStatus: 'بيع مباشر',
                  buyerName: 'غالية الصباغ',
                  date: '15/12/2021',
                  postRate: '15',
                  price: '500',
                  buyerImage: AssetImage('images/profile picture.jpg'),
                  images: [
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                  ],
                ),
                SaledPost(
                  productStatus: 'بيع مباشر',
                  buyerName: 'غالية الصباغ',
                  date: '15/12/2021',
                  postRate: '15',
                  price: '500',
                  buyerImage: AssetImage('images/profile picture.jpg'),
                  images: [
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                  ],
                ),
              ],
            ),
            PostList(
              scrollDirection: Axis.vertical,
              listContent: [
                NotSaledPost(
                  productStatus: 'بيع مباشر',
                  buyerName: 'غالية الصباغ',
                  date: '15/12/2021',
                  postRate: '15',
                  price: '500',
                  buyerImage: AssetImage('images/profile picture.jpg'),
                  images: [
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                  ],
                ),
                NotSaledPost(
                  productStatus: 'بيع مباشر',
                  buyerName: 'غالية الصباغ',
                  date: '15/12/2021',
                  postRate: '15',
                  price: '500',
                  buyerImage: AssetImage('images/profile picture.jpg'),
                  images: [
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                  ],
                ),
                NotSaledPost(
                  productStatus: 'بيع مباشر',
                  buyerName: 'غالية الصباغ',
                  date: '15/12/2021',
                  postRate: '15',
                  price: '500',
                  buyerImage: AssetImage('images/profile picture.jpg'),
                  images: [
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                  ],
                ),
                NotSaledPost(
                  productStatus: 'بيع مباشر',
                  buyerName: 'غالية الصباغ',
                  date: '15/12/2021',
                  postRate: '15',
                  price: '500',
                  buyerImage: AssetImage('images/profile picture.jpg'),
                  images: [
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
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
