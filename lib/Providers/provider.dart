import 'package:flutter/cupertino.dart';
import 'package:what_you_want/Components/SecondaryComponents/postContainer.dart';
import 'package:what_you_want/Components/SecondaryComponents/postList.dart';

class Providerf extends ChangeNotifier {
  Widget postListContent = PostList(
    scrollDirection: Axis.horizontal,
    listContent: [
      PostContainer(
        userName: 'غالية الصباغ',
        postImage: 'images/furniture.jpg',
        rate: '20',
        postContent: 'بيع مباشر',
        price: '6',
        userImage: 'images/profile picture.jpg',
      ),
      PostContainer(
        userName: 'غالية الصباغ',
        postImage: 'images/furniture.jpg',
        rate: '18',
        postContent: 'بيع مباشر',
        price: '1',
        userImage: 'images/profile picture.jpg',
      ),
      PostContainer(
        userName: 'غالية الصباغ',
        postImage: 'images/furniture.jpg',
        rate: '18',
        postContent: 'بيع مباشر',
        price: '10',
        userImage: 'images/profile picture.jpg',
      ),
      PostContainer(
        userName: 'غالية الصباغ',
        postImage: 'images/furniture.jpg',
        rate: '18',
        postContent: 'بيع مباشر',
        price: '8',
        userImage: 'images/profile picture.jpg',
      ),
      PostContainer(
        userName: 'غالية الصباغ',
        postImage: 'images/furniture.jpg',
        rate: '18',
        postContent: 'بيع مباشر',
        price: '10',
        userImage: 'images/profile picture.jpg',
      ),
    ],
  );

  void change(Widget postContent /*PostModel */) {
    postListContent = postContent;
    notifyListeners();
  }
}
