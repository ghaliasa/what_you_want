import 'package:flutter/material.dart';
import 'package:what_you_want/Components/BasicComponents/myBar.dart';
import 'package:what_you_want/Components/BasicComponents/myDrawer.dart';
import 'package:what_you_want/Components/SecondaryComponents/typeContainer.dart';
import 'package:what_you_want/Pages/Types/typePage.dart';
import 'package:what_you_want/Services/consts.dart';
import 'package:what_you_want/Services/services.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  static final String id = 'homePage';
  //  const HomePage({ Key key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    scrollController.addListener(() {
      setState(() {
        Services.changeBarColor(scrollController);
      });
    });

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyBar(
          isHome: true,
          type: '',
          onPressed: () {},
          title: '',
          tabs: const TabBar(tabs: [])),
      endDrawer: MyDrawer(),
      backgroundColor: backGroundGeneralColor,
      body: ListView(
        controller: scrollController,
        children: [
          TypeContainer(
            typeImage: 'images/furniture.jpg',
            typeName: 'الأثاثيات',
            onPressed: () {
              Services.changeBarToNormal();
              Get.to(
                () => TypePage(
                  typeName: 'الأثاثيات',
                  typeImage: 'images/furniture.jpg',
                ),
              );
            },
          ),
          TypeContainer(
            typeImage: 'images/furniture.jpg',
            typeName: 'الكهربائيات',
            onPressed: () {
              Services.changeBarToNormal();
              Get.to(
                () => TypePage(
                  typeName: 'الكهربائيات',
                  typeImage: 'images/furniture.jpg',
                ),
              );
            },
          ),
          TypeContainer(
            typeImage: 'images/furniture.jpg',
            typeName: 'الملبوسات',
            onPressed: () {
              Services.changeBarToNormal();
              Get.to(
                () => TypePage(
                  typeName: 'الملبوسات',
                  typeImage: 'images/furniture.jpg',
                ),
              );
            },
          ),
          TypeContainer(
            typeImage: 'images/furniture.jpg',
            typeName: 'المنوعات',
            onPressed: () {
              Services.changeBarToNormal();
              Get.to(
                () => TypePage(
                  typeName: 'المنوعات',
                  typeImage: 'images/furniture.jpg',
                ),
              );
            },
          ),
          TypeContainer(
            typeImage: 'images/furniture.jpg',
            typeName: 'طلبات الشراء',
            onPressed: () {
              Services.changeBarToNormal();
              Get.to(
                () => TypePage(
                  typeName: 'طلبات الشراء',
                  typeImage: 'images/furniture.jpg',
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
