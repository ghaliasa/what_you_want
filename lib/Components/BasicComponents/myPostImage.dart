import 'package:flutter/material.dart';

class MyPostImage extends StatelessWidget {
  final String imagePath; ///// in the future , it will return networkImage
  const MyPostImage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imagePath,
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.80,
          fit: BoxFit.fill,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
      ],
    );
  }
}
