import 'package:flutter/cupertino.dart';
import 'package:what_you_want/Pages/Types/typePage.dart';
import 'package:what_you_want/Pages/homePage.dart';
import 'package:what_you_want/Pages/purchases.dart';
import 'package:what_you_want/Pages/sales.dart';

final Map<String, WidgetBuilder> routes = {
  Sales.id: (context) => Sales(),
  HomePage.id: (context) => HomePage(),
  TypePage.id: (context) => TypePage(
        typeImage: '',
        typeName: '',
      ),
  Purchases.id: (context) => Purchases(),
};
