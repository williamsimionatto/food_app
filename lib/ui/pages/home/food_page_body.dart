import 'package:delivery_food_app/ui/utils/colors.dart';
import 'package:delivery_food_app/ui/widgets/big_text.dart';
import 'package:delivery_food_app/ui/widgets/icon_text.dart';
import 'package:delivery_food_app/ui/widgets/small_text.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven
                ? const Color(0xFF69c5DF)
                : const Color(0xFFf8a170),
            image: const DecorationImage(
              image: AssetImage('assets/image/food0.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const BigText(text: 'Chinese Side'),
                  const SizedBox(height: 10),
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
                  const SizedBox(height: 20),
                  Row(
                    children: const <Widget>[
                      IconText(
                        icon: Icons.circle_sharp,
                        text: "Normal",
                        iconColor: AppColors.iconColor1,
                      ),
                      SizedBox(width: 10),
                      IconText(
                        icon: Icons.location_on,
                        text: "1.7km",
                        iconColor: AppColors.mainColor,
                      ),
                      SizedBox(width: 10),
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
        ),
      ],
    );
  }
}
