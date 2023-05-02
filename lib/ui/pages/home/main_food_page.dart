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
        children: const <Widget>[
          FoodPageHead(),
          FoodPageBody(),
        ],
      ),
    );
  }
}
