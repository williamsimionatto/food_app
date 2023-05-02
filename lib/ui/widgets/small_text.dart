import 'package:flutter/cupertino.dart';

import 'package:delivery_food_app/ui/utils/colors.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  final double fontSize;
  final double lineHeight;

  const SmallText({
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
