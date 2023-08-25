import 'package:flutter/material.dart';
import 'package:what_you_want/Components/BasicComponents/myDrawerButton.dart';
import 'package:what_you_want/Pages/homePage.dart';
import 'package:what_you_want/Pages/purchases.dart';
import 'package:what_you_want/Pages/sales.dart';
import 'package:what_you_want/Services/consts.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.black26.withOpacity(0.2),
      ),
      child: Drawer(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  child: Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage(myPicture),
                      radius: 40,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                child: Center(
                  child: Text(
                    myName,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text(
                      myPhoneNumber,
                      style: const TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.14,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.white.withOpacity(0.4),
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                MyDrawerButton(
                  text: 'الصفحة الرئيسية',
                  icon: Icons.home_outlined,
                  onPressed: () {
                    Navigator.of(context).pushNamed(HomePage.id);
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                MyDrawerButton(
                  text: 'المشتريات',
                  icon: Icons.shopping_bag_outlined,
                  onPressed: () {
                    Get.to(Purchases);
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                MyDrawerButton(
                  text: 'المبيعات',
                  icon: Icons.local_offer_outlined,
                  onPressed: () {
                    Get.to(Sales());
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                MyDrawerButton(
                  text: 'النقاط',
                  icon: Icons.star_rate_outlined,
                  onPressed: () {},
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
              ],
            ),
            Divider(
              thickness: 1,
              color: Colors.white.withOpacity(0.4),
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                MyDrawerButton(
                  text: 'الإعدادات',
                  icon: Icons.settings,
                  onPressed: () {},
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                MyDrawerButton(
                  text: 'حول التطبيق',
                  icon: Icons.info_outline,
                  onPressed: () {},
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                MyDrawerButton(
                  text: 'تسجيل الخروج',
                  icon: Icons.cancel_outlined,
                  onPressed: () {},
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
