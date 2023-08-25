import 'package:flutter/material.dart';

class PostList extends StatefulWidget {
  final Axis scrollDirection;
  final List<Widget> listContent;
  const PostList({required this.scrollDirection, required this.listContent});

  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  @override
  Widget build(BuildContext context) {
    return (widget.scrollDirection == Axis.horizontal)
        ? Column(
            key: ValueKey(1),
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.55,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.40,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                    scrollDirection: widget.scrollDirection,
                    children: widget.listContent),
              ),
            ],
          )
        : ListView(
            scrollDirection: widget.scrollDirection,
            children: widget.listContent,
          );
  }
}
