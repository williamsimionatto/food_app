import 'package:flutter/material.dart';

import 'package:delivery_food_app/ui/utils/colors.dart';
import 'package:delivery_food_app/ui/utils/dimensions.dart';
import 'package:delivery_food_app/ui/widgets/widgets.dart';

class FoodDetail extends StatelessWidget {
  final String foodName;
  final int rating;

  const FoodDetail({
    required this.foodName,
    required this.rating,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        BigText(
          text: foodName,
          fontSize: Dimensions.font26,
        ),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            Wrap(
              children: List.generate(rating, (index) {
                return const Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                );
              }),
            ),
            const SizedBox(width: 10),
            const SmallText(text: "4.5"),
            const SizedBox(width: 10),
            const SmallText(text: "1287"),
            const SizedBox(width: 10),
            const SmallText(text: "comments"),
          ],
        ),
        SizedBox(height: Dimensions.height20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            IconText(
              icon: Icons.circle_sharp,
              text: "Normal",
              iconColor: AppColors.iconColor1,
            ),
            IconText(
              icon: Icons.location_on,
              text: "1.7km",
              iconColor: AppColors.mainColor,
            ),
            IconText(
              icon: Icons.access_time_rounded,
              text: "32min",
              iconColor: AppColors.iconColor2,
            )
          ],
        ),
      ],
    );
  }
}
