import 'package:concentration/utils/constants/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarText extends StatelessWidget {
  final String text;
  const AppBarText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: AppTextStyles.irishGrover40regular,
      ),
    );
  }
}
