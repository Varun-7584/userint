import 'package:flutter/material.dart';
import 'package:userint/source/constants/colors.dart';
import 'package:userint/source/constants/image_strings.dart';
import 'package:userint/source/constants/text_string.dart';

import 'dashboard_widgets/dashboard_banner.dart';
import 'dashboard_widgets/dashboard_appbar.dart';
import 'dashboard_widgets/dashboard_banner_extra_widget.dart';
import 'dashboard_widgets/dashboard_categories.dart';
import 'dashboard_widgets/dashboard_search.dart';
import 'dashboard_widgets/dasshboard_top_products.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness== Brightness.dark;
    final texttheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: isDarkMode ? ISecondaryColor :IPrimaryColor,
      appBar: DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(IDashBoardTitle, style: texttheme.bodyLarge),
              Text(IDashBoardHeading, style: texttheme.headlineMedium),
              const SizedBox(height: 20),
              ///search box
              DashboardSearchBox(texttheme: texttheme),
              const SizedBox(height: 20),
              ///category inside horizontal scrolling
              DashboardHorizontalScrollCategories(texttheme: texttheme),
              const SizedBox(height: 20),
              ///banner
              DashboardBanner(texttheme: texttheme),
              const SizedBox(height: 20,),
              ///Top Highlights 
              Text(IDashBoardTopProducts, style: texttheme.headlineSmall?.apply(fontSizeFactor: 1.2),),
              const SizedBox(height: 10,),
             ///top products
              DashboardTopProducts(texttheme: texttheme),
              const SizedBox(height: 20),
              ///extra banner
              DashboadBannerExtraWidget(texttheme: texttheme),
              const SizedBox(height: 20),
              Container(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
