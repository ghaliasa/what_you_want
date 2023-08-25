import 'package:flutter/material.dart';

class MyUserImage extends StatelessWidget {
  final String imagePath;
  const MyUserImage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.brown[100],
      radius: MediaQuery.of(context).size.width * 0.05,
      backgroundImage: const AssetImage('images/profile picture.jpg'),
    );
  }
}
