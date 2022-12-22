import 'package:concentration/widgets/app_bar_widget.dart';
import 'package:concentration/widgets/go_home_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomScaffold extends StatelessWidget {
  final Widget scaffoldBody;
  final Widget appBarContent;
  const CustomScaffold(
      {super.key, required this.appBarContent, required this.scaffoldBody});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBarCustom(content: appBarContent),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_image.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: scaffoldBody),
      floatingActionButton: GoHomeFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
