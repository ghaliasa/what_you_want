import 'package:flutter/material.dart';

class MyPostImagesListView extends StatelessWidget {
  final List<Widget> images;
  const MyPostImagesListView({required this.images});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width * 0.80,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: images,
        ),
      ),
    );
  }
}
