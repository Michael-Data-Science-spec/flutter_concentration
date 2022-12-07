import 'package:concentration/utils/constants/app_colors.dart';
import 'package:concentration/utils/constants/app_text_styles.dart';
import 'package:flutter/cupertino.dart';

const double _kPopupHeight = 80;
const double _kPopupWidth = 412;

class Popup extends StatelessWidget {
  const Popup({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => SizedBox(
      height: _kPopupHeight,
      width: _kPopupWidth,
      child: Container(
        color: AppColors.primaryBlue,
        child: Center(
            child: Text(
          text,
          style: AppTextStyles.irishGrover40regular,
        )),
      ));
}
