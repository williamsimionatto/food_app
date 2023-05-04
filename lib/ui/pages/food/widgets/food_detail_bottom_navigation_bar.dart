
import 'package:delivery_food_app/ui/utils/colors.dart';
import 'package:delivery_food_app/ui/utils/dimensions.dart';
import 'package:flutter/material.dart';

import '../../../widgets/widgets.dart';

class FoodDetailBottomNavigationBar extends StatelessWidget {
  const FoodDetailBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.bottomHeightBar,
      padding: EdgeInsets.only(
        top: Dimensions.height30,
        bottom: Dimensions.height30,
        left: Dimensions.widtht20,
        right: Dimensions.widtht20,
      ),
      decoration: BoxDecoration(
        color: AppColors.buttonBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimensions.radius20 * 2),
          topRight: Radius.circular(Dimensions.radius20 * 2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: Dimensions.height20,
              bottom: Dimensions.height20,
              left: Dimensions.widtht20,
              right: Dimensions.widtht20,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(Dimensions.radius20),
            ),
            child: Row(
              children: <Widget>[
                const Icon(Icons.remove, color: AppColors.signColor),
                SizedBox(width: Dimensions.width10 / 2),
                const BigText(text: '0'),
                SizedBox(width: Dimensions.width10 / 2),
                const Icon(Icons.add, color: AppColors.signColor),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: Dimensions.height20,
              bottom: Dimensions.height20,
              left: Dimensions.widtht20,
              right: Dimensions.widtht20,
            ),
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.circular(Dimensions.radius20),
            ),
            child: const BigText(
              text: "\$ 12 | Add to Cart",
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
