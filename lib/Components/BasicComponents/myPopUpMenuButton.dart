import 'package:flutter/material.dart';
import 'package:what_you_want/Components/SecondaryComponents/userPopUpMenuItem.dart';

class MyPopUpMenuButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      offset: const Offset(40, 8),
      elevation: 8,
      child: Container(
        color: Colors.black.withOpacity(0.5),
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.width * 0.5,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.35,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person_outline,
                size: MediaQuery.of(context).size.width * 0.05,
                color: Colors.yellow[200],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.13,
                height: MediaQuery.of(context).size.height * 0.05,
                child: Center(
                  child: Text(
                    'offers',
                    style: TextStyle(
                      color: Colors.brown[100],
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.11,
                height: MediaQuery.of(context).size.height * 0.05,
                child: Center(
                  child: Text(
                    '45',
                    style: TextStyle(
                      color: Colors.brown[100],
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      itemBuilder: (context) {
        return [
          const PopupMenuItem(
            child: UserPopUpMenuItem(
              userImage: 'images/profile picture.jpg',
            ),
          ),
          const PopupMenuItem(
            child: UserPopUpMenuItem(
              userImage: 'images/profile picture.jpg',
            ),
          ),
          const PopupMenuItem(
            child: UserPopUpMenuItem(
              userImage: 'images/profile picture.jpg',
            ),
          ),
          const PopupMenuItem(
            child: UserPopUpMenuItem(
              userImage: 'images/profile picture.jpg',
            ),
          ),
          const PopupMenuItem(
            child: UserPopUpMenuItem(
              userImage: 'images/profile picture.jpg',
            ),
          ),
          const PopupMenuItem(
            child: UserPopUpMenuItem(
              userImage: 'images/profile picture.jpg',
            ),
          ),
          const PopupMenuItem(
            child: UserPopUpMenuItem(
              userImage: 'images/profile picture.jpg',
            ),
          ),
          const PopupMenuItem(
            child: UserPopUpMenuItem(
              userImage: 'images/profile picture.jpg',
            ),
          ),
          const PopupMenuItem(
            child: UserPopUpMenuItem(
              userImage: 'images/profile picture.jpg',
            ),
          ),
        ];
      },
    );
  }
}
