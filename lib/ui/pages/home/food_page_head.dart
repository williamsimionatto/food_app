import 'package:flutter/material.dart';

import 'package:delivery_food_app/ui/utils/colors.dart';
import 'package:delivery_food_app/ui/utils/dimensions.dart';
import 'package:delivery_food_app/ui/widgets/widgets.dart';

class FoodPageHead extends StatelessWidget {
  const FoodPageHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        margin: EdgeInsets.only(
          top: Dimensions.height60,
          bottom: Dimensions.height15,
        ),
        padding: EdgeInsets.only(
          left: Dimensions.widtht20,
          right: Dimensions.widtht20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: <Widget>[
                const BigText(
                  text: 'Rio Grande do Sul',
                  color: AppColors.mainColor,
                ),
                Row(
                  children: const <Widget>[
                    SmallText(
                      text: 'Tapejara',
                      color: Colors.black54,
                    ),
                    Icon(Icons.arrow_drop_down_rounded)
                  ],
                ),
              ],
            ),
            Center(
              child: Container(
                width: Dimensions.height45,
                height: Dimensions.height45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                  color: AppColors.mainColor,
                ),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: Dimensions.iconSize20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
