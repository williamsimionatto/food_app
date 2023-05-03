import 'package:flutter/material.dart';

import 'package:delivery_food_app/ui/utils/dimensions.dart';
import 'package:delivery_food_app/ui/widgets/widgets.dart';

class PopularText extends StatelessWidget {
  const PopularText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: Dimensions.widtht30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          const BigText(text: 'Popular'),
          SizedBox(width: Dimensions.width10),
          Container(
            margin: const EdgeInsets.only(bottom: 3),
            child: const BigText(text: ".", color: Colors.black26),
          ),
          SizedBox(width: Dimensions.width10),
          Container(
            margin: const EdgeInsets.only(bottom: 2),
            child: const SmallText(text: "Food pairing", color: Colors.black26),
          ),
        ],
      ),
    );
  }
}
