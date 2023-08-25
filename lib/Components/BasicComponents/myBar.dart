import 'package:flutter/material.dart';

import '../../Services/consts.dart';

class MyBar extends StatefulWidget implements PreferredSizeWidget {
  final bool isHome;
  final String type;
  final String title;
  final VoidCallback onPressed;
  final PreferredSizeWidget tabs;
  MyBar(
      {required this.isHome,
      required this.type,
      required this.onPressed,
      required this.title,
      required this.tabs});

  @override
  _MyBarState createState() => _MyBarState();

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

class _MyBarState extends State<MyBar> {
  @override
  Widget build(BuildContext context) {
    if (widget.isHome) {
      return AppBar(
        title: Container(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Center(
            child: Text(
              "Store Shop",
              style: TextStyle(
                fontSize: 30,
                color: themeColor,
              ),
            ),
          ),
        ),
        iconTheme: IconThemeData(color: themeColor),
        backgroundColor: barColor,
        elevation: 0,
      );
    } else if (widget.type.isNotEmpty) {
      if (widget.type == 'الأثاثيات') {
        return AppBar(
          title: IconButton(
            icon: Icon(Icons.add),
            onPressed: widget.onPressed,
          ),
          iconTheme: IconThemeData(color: themeColor),
          backgroundColor: barColor,
          elevation: 0,
        );
      } else if (widget.type == 'الكهربائيات') {
        return AppBar(
          title: IconButton(
            icon: Icon(Icons.add),
            onPressed: widget.onPressed,
          ),
          iconTheme: IconThemeData(color: themeColor),
          backgroundColor: barColor,
          elevation: 0,
        );
      } else if (widget.type == 'الملبوسات') {
        return AppBar(
          title: IconButton(
            icon: Icon(Icons.add),
            onPressed: widget.onPressed,
          ),
          iconTheme: IconThemeData(color: themeColor),
          backgroundColor: barColor,
          elevation: 0,
        );
      } else if (widget.type == 'المنوعات') {
        return AppBar(
          title: IconButton(
            icon: Icon(Icons.add),
            onPressed: widget.onPressed,
          ),
          iconTheme: IconThemeData(color: themeColor),
          backgroundColor: barColor,
          elevation: 0,
        );
      } else if (widget.type == 'طلبات الشراء') {
        return AppBar(
          title: IconButton(
            icon: Icon(Icons.add),
            onPressed: widget.onPressed,
          ),
          iconTheme: IconThemeData(color: themeColor),
          backgroundColor: barColor,
          elevation: 0,
        );
      } else {
        return AppBar(
          title: IconButton(
            icon: Icon(Icons.add),
            onPressed: widget.onPressed,
          ),
          iconTheme: IconThemeData(color: themeColor),
          backgroundColor: barColor,
          elevation: 0,
        );
      }
    }
    return AppBar(
      bottom: widget.tabs,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: widget.onPressed,
      ),
      iconTheme: IconThemeData(color: themeColor),
      backgroundColor: Colors.brown[100],
      elevation: 0,
    );
  }
}
