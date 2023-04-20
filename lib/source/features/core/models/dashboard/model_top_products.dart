import 'package:flutter/material.dart';

import '../../../../constants/animations.dart';
import '../../../../constants/image_strings.dart';

class DashBoardTopProductsModel{
  late final String title;
  late final String image ;
  late final String heading;
  late final String subHeading;
  late final VoidCallback? onPress ;
  
  DashBoardTopProductsModel(
      this.title,this.image, this.heading, this.subHeading, this.onPress
      );
  static List<DashBoardTopProductsModel> list =[
    DashBoardTopProductsModel("Product 1",ILoginScreenImaage , "About 1","Description 1", () { }),
    DashBoardTopProductsModel("Product 2",ILoginScreenImaage , "About 2","Description 2", () { }),
    DashBoardTopProductsModel("Product 3",ILoginScreenImaage , "About 3","Description 3", () { }),
    DashBoardTopProductsModel("Product 3",ILoginScreenImaage , "About 4","Description 4", () { })

  ];
}