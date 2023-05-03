import 'package:flutter/material.dart';

import 'package:delivery_food_app/ui/utils/colors.dart';
import 'package:delivery_food_app/ui/utils/dimensions.dart';

import 'package:delivery_food_app/ui/widgets/widgets.dart';

class ListPopularFoods extends StatelessWidget {
  const ListPopularFoods({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(
            left: Dimensions.widtht20,
            right: Dimensions.widtht20,
            bottom: Dimensions.width10,
          ),
          child: Row(
            children: [
              Container(
                width: Dimensions.listViewImgSize,
                height: Dimensions.listViewImgSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white38,
                  image: const DecorationImage(
                    image: AssetImage('assets/image/food0.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: Dimensions.listViewTextContSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      bottomRight: Radius.circular(Dimensions.radius20),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: Dimensions.width10,
                      right: Dimensions.width10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const BigText(
                          text: "Nutritious fruit meal in China",
                        ),
                        SizedBox(height: Dimensions.height10),
                        const SmallText(
                          text: "With chinese characteristics",
                        ),
                        SizedBox(height: Dimensions.height10),
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
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
