import 'package:concentration/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarCustom extends StatelessWidget with PreferredSizeWidget {
  final Widget content;
  const AppBarCustom({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(child: content),
      backgroundColor: AppColors.primaryBlue,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
