import 'package:delivery_food_app/ui/utils/colors.dart';
import 'package:delivery_food_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FoodPageHead extends StatelessWidget {
  const FoodPageHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: const EdgeInsets.only(top: 60, bottom: 15),
        padding: const EdgeInsets.only(left: 20, right: 20),
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
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.mainColor,
                ),
                child: const Icon(Icons.search, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
