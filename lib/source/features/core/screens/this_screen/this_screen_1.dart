import 'package:flutter/material.dart';
import 'package:userint/source/constants/image_strings.dart';

import '../../../../constants/colors.dart';

class ThisScreen extends StatelessWidget {
  const ThisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? ISecondaryColor : IPrimaryColor,
      drawer: Drawer(
        backgroundColor: isDarkMode ? ISecondaryColor : IPrimaryColor,
        elevation: 140.0,
        child: ListView(
          children: [
           UserAccountsDrawerHeader(
               accountName: Text("Varun Sharma"),
               accountEmail: Text("varun1@gamil.com"),
           currentAccountPicture: CircleAvatar(foregroundImage: AssetImage(IOnBoardingImage3),
          ),
           ),
            ListTile(
              leading: Icon(
                Icons.home,
                size: 30,
              ),
              title: Text(
                "Home",
                style: TextStyle(fontSize: 24),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_cart,
                size: 30,
              ),
              title: Text(
                "Shop",
                style: TextStyle(fontSize: 24),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.favorite,
                size: 30,
              ),
              title: Text(
                "Favorite",
                style: TextStyle(fontSize: 24),
              ),
              onTap: () {},
            ),
            Padding(padding: EdgeInsets.all(15.0),
            child: Text("Labels"),),
            ListTile(
              leading: Icon(
                Icons.label,
                size: 30,
              ),
              title: Text(
                "one",
                style: TextStyle(fontSize: 24),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.label,
                size: 30,
              ),
              title: Text(
                "two",
                style: TextStyle(fontSize: 24),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.label,
                size: 30,
              ),
              title: Text(
                "three",
                style: TextStyle(fontSize: 24),
              ),
              onTap: () {},
            ),


          ],
        ),
      ),
      appBar: AppBar(
        title: Text("demo"),
      ),
      body: Container(
        child: ListView.builder(itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text("Hello"),
            ),
            title: Text("Hi"),
            subtitle: Text("This"),
            trailing: Text("ijdnbci"),
          );
        }),
      ),
    );
  }
}
