import 'package:delivery_food_app/ui/pages/pages.dart';
import 'package:flutter/material.dart';

import 'package:delivery_food_app/ui/widgets/big_text.dart';
import 'package:delivery_food_app/ui/widgets/small_text.dart';
import 'package:delivery_food_app/ui/utils/colors.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
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
          ),
          const FoodPageBody(),
        ],
      ),
    );
  }
}
