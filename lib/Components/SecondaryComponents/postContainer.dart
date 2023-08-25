import 'package:flutter/material.dart';
import 'package:what_you_want/Components/BasicComponents/myColoredButton.dart';
import 'package:what_you_want/Components/SecondaryComponents/postContent.dart';
import 'package:what_you_want/Providers/provider.dart';
import 'package:provider/provider.dart';

class PostContainer extends StatelessWidget {
  final String userName;
  final String postImage;
  final String postContent;
  final String price;
  final String rate;
  final String userImage;

  const PostContainer({
    required this.userName,
    required this.postContent,
    required this.price,
    required this.rate,
    required this.postImage,
    required this.userImage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.05,
        ),
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 57, 57, 57).withOpacity(0.9),
            borderRadius: BorderRadius.circular(40),
          ),
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[200],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            rate,
                            style: TextStyle(
                              color: Colors.brown[100],
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              userName,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.045,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.brown[100],
                          radius: MediaQuery.of(context).size.width * 0.05,
                          backgroundImage: AssetImage(
                            userImage,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.36,
                child: Image.asset(
                  postImage,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.65,
                child: Center(
                  child: Text(
                    postContent,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                    ),
                  ),
                ),
              ),
              Consumer<Providerf>(
                builder: (context, provider, child) {
                  return MyColoredButton(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.5,
                    buttonColor: Colors.brown[100]!,
                    text: 'تفاصيل',
                    onPressed: () {
                      provider.change(PostContent(
                        postImage: [
                          Image.asset(
                            'images/furniture.jpg',
                            height: MediaQuery.of(context).size.height * 0.25,
                            width: MediaQuery.of(context).size.width * 0.80,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Image.asset(
                            'images/furniture.jpg',
                            height: MediaQuery.of(context).size.height * 0.25,
                            width: MediaQuery.of(context).size.width * 0.80,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Image.asset(
                            'images/furniture.jpg',
                            height: MediaQuery.of(context).size.height * 0.25,
                            width: MediaQuery.of(context).size.width * 0.80,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Image.asset(
                            'images/furniture.jpg',
                            height: MediaQuery.of(context).size.height * 0.25,
                            width: MediaQuery.of(context).size.width * 0.80,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                        ],
                        postContent: postContent,
                        price: price,
                        rate: rate,
                        userImage: userImage,
                        userName: userName,
                        onPressed: () {},
                      ) /* postModel */);
                    },
                    textColor: Colors.black54,
                    textSize: MediaQuery.of(context).size.width * 0.05,
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
