import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:userint/source/features/core/models/dashboard/model_top_products.dart';

import '../../../../../constants/colors.dart';


class DashboardTopProducts extends StatelessWidget {
  const DashboardTopProducts({
    super.key,
    required this.texttheme,
  });

  final TextTheme texttheme;

  @override
  Widget build(BuildContext context) {
    final list = DashBoardTopProductsModel.list;
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context , index)=> GestureDetector(
         onTap: list[index].onPress,
          child: SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10, top: 5 ),
              child: Container(
                decoration: BoxDecoration(
                  color: ICardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Flexible(child: Text(list[index].title, style: texttheme.titleLarge,maxLines: 2,overflow: TextOverflow.ellipsis,))),
                        Expanded(child:Image(image: AssetImage(list[index].image), height: 80,), ),
                        //Flexible(child: Container(child : Lottie.asset(list[index].image),height: 110,),),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: (){},
                          child:const Icon(Icons.read_more),
                          style: ElevatedButton.styleFrom(shape: CircleBorder()),),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(list[index].heading, style: texttheme.headlineSmall,maxLines: 2,overflow: TextOverflow.ellipsis,),
                            Text(list[index].subHeading, style: texttheme.titleLarge,maxLines: 2,overflow: TextOverflow.ellipsis,),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
