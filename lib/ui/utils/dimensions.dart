import 'package:get/get.dart';

class Dimensions {
  static double? screenHeight = Get.context?.height;
  static double? screenWidth = Get.context?.width;

  static double pageViewHeight = screenHeight! / 2.64;
  static double pageViewContainer = screenHeight! / 3.84;
  static double pageViewTextContainer = screenHeight! / 7.03;

  static double height10 = screenHeight! / 84.4;
  static double height15 = screenHeight! / 56.27;
  static double height20 = screenHeight! / 42.2;
  static double height30 = screenHeight! / 28.13;
  static double height45 = screenHeight! / 18.75;
  static double height60 = screenHeight! / 14.06;

  static double width10 = screenHeight! / 84.4;
  static double width15 = screenHeight! / 56.27;
  static double widtht20 = screenHeight! / 42.2;
  static double widtht30 = screenHeight! / 28.13;
  static double widtht45 = screenHeight! / 18.75;
  static double widtht60 = screenHeight! / 14.06;

  static double font20 = screenHeight! / 42.2;

  static double radius15 = screenHeight! / 56.27;
  static double radius20 = screenHeight! / 42.2;
  static double radius30 = screenHeight! / 28.13;

  static double iconSize24 = screenHeight! / 35.17;

  static double listViewImgSize = screenWidth! / 3.25;
  static double listViewTextContSize = screenWidth! / 3.9;
}
