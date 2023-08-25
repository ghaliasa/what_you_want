import 'package:flutter/material.dart';
import 'package:what_you_want/Components/BasicComponents/myBar.dart';
import 'package:what_you_want/Components/BasicComponents/myDrawer.dart';
import 'package:what_you_want/Components/BasicComponents/myPostImage.dart';
import 'package:what_you_want/Components/SecondaryComponents/buyOrderPosts.dart';
import 'package:what_you_want/Components/SecondaryComponents/inProgressBuyPosts.dart';
import 'package:what_you_want/Components/SecondaryComponents/postList.dart';
import 'package:what_you_want/Components/SecondaryComponents/purchasesPosts.dart';

class Purchases extends StatefulWidget {
  static final String id = "purchases";

  @override
  State<Purchases> createState() => _PurchasesState();
}

class _PurchasesState extends State<Purchases> {
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
          tabs: const TabBar(
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                child: Text(
                  "قيد الشراء",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "طلبات الشراء",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "المشتريات",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          title: '',
        ),
        endDrawer: MyDrawer(),

        body: const TabBarView(
          children: [
            PostList(
              scrollDirection: Axis.vertical,
              listContent: [
                InProgressBuyPosts(
                  date: "12/1/2012",
                  productName: "مروحة",
                ),
                InProgressBuyPosts(
                  date: "12/1/2012",
                  productName: "مروحة",
                ),
                InProgressBuyPosts(
                  date: "12/1/2012",
                  productName: "مروحة",
                ),
                InProgressBuyPosts(
                  date: "12/1/2012",
                  productName: "مروحة",
                ),
              ],
            ),

            //////////////

            PostList(
              scrollDirection: Axis.vertical,
              listContent: [
                BuyOrderPosts(
                  date: "12/1/2012",
                  productName: "مروحة",
                ),
                BuyOrderPosts(
                  date: "12/1/2012",
                  productName: "مروحة",
                ),
                BuyOrderPosts(
                  date: "12/1/2012",
                  productName: "مروحة",
                ),
                BuyOrderPosts(
                  date: "12/1/2012",
                  productName: "مروحة",
                ),
                BuyOrderPosts(
                  date: "12/1/2012",
                  productName: "مروحة",
                ),
              ],
            ),

            ////////////////////

            PostList(
              scrollDirection: Axis.vertical,
              listContent: [
                PurchasesPosts(
                  date: "12/1/2021",
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
                  postRate: "7",
                  price: "880",
                  salerImage: AssetImage('images/profile picture.jpg'),
                  salerName: "ملاذ الخوام",
                ),
                PurchasesPosts(
                  date: "12/1/2021",
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
                  postRate: "7",
                  price: "880",
                  salerImage: AssetImage('images/profile picture.jpg'),
                  salerName: "ملاذ الخوام",
                ),
                PurchasesPosts(
                  date: "12/1/2021",
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
                  postRate: "7",
                  price: "880",
                  salerImage: AssetImage('images/profile picture.jpg'),
                  salerName: "ملاذ الخوام",
                ),
                PurchasesPosts(
                  date: "12/1/2021",
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
                  postRate: "7",
                  price: "880",
                  salerImage: AssetImage('images/profile picture.jpg'),
                  salerName: "ملاذ الخوام",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
