import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../constants/animations.dart';
import '../../../../../constants/colors.dart';
import '../../../../../constants/text_string.dart';


class DashboardBanner extends StatelessWidget {
  const DashboardBanner({
    super.key,
    required this.texttheme,
  });

  final TextTheme texttheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            height: 175,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ICardColor,
            ),
            padding: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(child: Container(child : Lottie.asset(IProductBannerPrimaryAni),),),
                    Flexible(child: Container(child : Lottie.asset(INewBannerDashboardAni),),),

                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  IDashBoardBannerTitle1,
                  style: texttheme.titleLarge,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  IDashBoardBannerTitle2,
                  style: texttheme.bodyLarge,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Container(
            height: 175,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ICardColor,
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Flexible(child: Container(child : Lottie.asset(IProductBannerPrimaryAni),height: 30,),),
                          Flexible(child: Container(child : Lottie.asset(INewBannerDashboardAni),height: 25,),),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        IDashBoardBannerTitle1,
                        style: texttheme.titleLarge,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        IDashBoardBannerTitle2,
                        style: texttheme.bodyLarge,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: (){},
                    child: const Text(IDashBoardButton , style: TextStyle(
                      fontSize: 10
                    ),),),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
