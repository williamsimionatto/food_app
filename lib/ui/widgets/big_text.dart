import 'package:delivery_food_app/ui/utils/colors.dart';
import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  final double fontSize;
  final TextOverflow overflow;

  const BigText({
    required this.text,
    this.color = AppColors.mainBlackColor,
    this.fontSize = 20,
    this.overflow = TextOverflow.ellipsis,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      ),
    );
  }
}
