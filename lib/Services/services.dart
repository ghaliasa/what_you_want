import 'package:flutter/material.dart';

import 'consts.dart';

class Services {
  static void changeBarToNormal() {
    barColor = Colors.transparent;
    themeColor = Colors.black;
  }

  static void changeBarColor(ScrollController scrollController) {
    if (scrollController.offset > 50) {
      barColor = Colors.black45;
      themeColor = Colors.white;
    } else {
      barColor = Colors.transparent;
      themeColor = Colors.black;
    }
  }
}
