import 'package:flutter/material.dart';
import '../../../../../constants/colors.dart';
import '../../../models/dashboard/categories.dart';
class DashboardHorizontalScrollCategories extends StatelessWidget {
  const DashboardHorizontalScrollCategories({
    super.key,
    required this.texttheme,
  });
  final TextTheme texttheme;
  @override
  Widget build(BuildContext context) {
    //calling the model
    final list = DashBoardCategoriesModel.list;
    return SizedBox(
      height: 45,
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            height: 50,
            width: 170,
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: IDarkColor,
                  ),
                  child: Center(
                      child: Text(
                    list[index].title,
                    style: texttheme.headlineSmall?.apply(color: Colors.white),
                  )),
                ),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //elipsis will add dots to the text
                      Text(
                        list[index].heading,
                        style: texttheme.titleLarge,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        list[index].subHeading,
                        style: texttheme.bodyLarge,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
      ),
    );
  }
}
