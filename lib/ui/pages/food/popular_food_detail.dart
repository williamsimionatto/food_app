import 'package:delivery_food_app/ui/utils/colors.dart';
import 'package:delivery_food_app/ui/utils/dimensions.dart';
import 'package:delivery_food_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.poupularFoodImgSize,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/food0.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.widtht20,
            right: Dimensions.widtht20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.poupularFoodImgSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.widtht20,
                right: Dimensions.widtht20,
                top: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20),
                  topRight: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const BigText(text: 'Chinese Side'),
                  SizedBox(height: Dimensions.height10),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5, (index) {
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
              ),
            ),
          )
        ],
      ),
    );
  }
}
