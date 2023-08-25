import 'package:flutter/material.dart';
import 'package:what_you_want/Components/BasicComponents/myBar.dart';
import 'package:what_you_want/Components/BasicComponents/myDrawer.dart';
import 'package:what_you_want/Components/SecondaryComponents/typeImage.dart';
import 'package:what_you_want/Providers/provider.dart';
import 'package:what_you_want/Services/consts.dart';
import 'package:provider/provider.dart';

class TypePage extends StatefulWidget {
  static final String id = 'typePage';
  final String typeName;
  final String typeImage;

  const TypePage({required this.typeName, required this.typeImage});

  @override
  _TypePageState createState() => _TypePageState();
}

class _TypePageState extends State<TypePage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Providerf>(
      create: (context) {
        return Providerf();
      },
      child: Builder(builder: (context) {
        return Consumer<Providerf>(
          builder: (context, provider, _) {
            return Scaffold(
              backgroundColor: backGroundGeneralColor,
              appBar: MyBar(
                isHome: false,
                type: widget.typeName,
                onPressed: () {},
                tabs: const TabBar(tabs: []),
                title: '',
              ),
              endDrawer: MyDrawer(),
              extendBodyBehindAppBar: true,
              body: Container(
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    TypeImage(
                      typeImage: widget.typeImage,
                    ),
                    AnimatedSwitcher(
                      child: provider.postListContent,
                      duration: Duration(milliseconds: 500),
                      transitionBuilder: (child, animation) {
                        animation = CurvedAnimation(
                          parent: animation,
                          curve: Curves.decelerate,
                        );
                        return ScaleTransition(
                          scale: animation,
                          child: child,
                        );
                      },
                    )
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
