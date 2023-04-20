import 'package:flutter/material.dart';

class DashboardBannerViewAllModel{
  late final String imageOne;
  late final String imageTwo;
  late final String heading;
  late final String subHeading;
  late final VoidCallback? onPress ;
  late final VoidCallback? onpressedd;

  DashboardBannerViewAllModel(this.imageOne, this.imageTwo, this.heading, this.subHeading, this.onPress , this.onpressedd);
  ///dummy values
static List<DashboardBannerViewAllModel> list =[
  DashboardBannerViewAllModel("","","Highlight 1", "About 1", (){}, () { }),
  DashboardBannerViewAllModel("","","Highlight 2", "About 2", (){}, () { }),
  DashboardBannerViewAllModel("","","Highlight 3", "About 3", (){}, () { }),
  DashboardBannerViewAllModel("","","Highlight 4", "About 4", (){}, () { }),
  DashboardBannerViewAllModel("","","Highlight 5", "About 5", (){}, () { }),

];

}