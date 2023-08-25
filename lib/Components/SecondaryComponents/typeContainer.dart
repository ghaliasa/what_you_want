import 'package:flutter/material.dart';

class TypeContainer extends StatelessWidget {
  final String typeImage;
  final String typeName;
  final VoidCallback onPressed;
  const TypeContainer(
      {required this.typeImage,
      required this.typeName,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        InkWell(
          onTap: onPressed,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 6), // changes position of shadow
                  ),
                ],
              ),
              height: MediaQuery.of(context).size.height * 0.33,
              width: MediaQuery.of(context).size.width * 0.83,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      typeImage,
                      fit: BoxFit.fill,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.33,
                      width: MediaQuery.of(context).size.width * 0.83,
                      color: Colors.black26.withOpacity(0.2),
                      child: Center(
                        child: Text(
                          typeName,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.08,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
