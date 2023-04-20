import 'package:flutter/material.dart';

class DashBoardCategoriesModel{
  late final String title;
  late final String heading;
  late final String subHeading;
  late final VoidCallback? onPress ;

  DashBoardCategoriesModel(this.title, this.heading, this.subHeading, this.onPress);
///dummy values
  static List<DashBoardCategoriesModel> list =[
    DashBoardCategoriesModel("P1", "Product 1" , "Description 1", () { }),
    DashBoardCategoriesModel("P2", "Product 2" , "Description 2", () { }),
    DashBoardCategoriesModel("P3", "Product 3" , "Description 3", () { }),
    DashBoardCategoriesModel("P4", "Product 4" , "Description 4", () { }),
  ];
}