import 'package:flutter/cupertino.dart';

import 'package:delivery_food_app/ui/utils/colors.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double fontSize;
  double lineHeight;

  SmallText({
    required this.text,
    this.color = AppColors.mainBlackColor,
    this.fontSize = 12,
    this.lineHeight = 1.2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: 'Roboto',
        height: lineHeight,
      ),
    );
  }
}
