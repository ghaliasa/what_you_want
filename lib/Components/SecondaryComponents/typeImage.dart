import 'package:flutter/material.dart';

class TypeImage extends StatelessWidget {
  final String typeImage;
  const TypeImage({required this.typeImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.85,
          child: Image(
            image: AssetImage(
              typeImage,
            ),
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.85,
          color: Colors.black26,
        ),
      ],
    );
  }
}
