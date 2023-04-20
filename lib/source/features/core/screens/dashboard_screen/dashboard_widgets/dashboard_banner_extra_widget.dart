import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/text_string.dart';
import '../../../models/dashboard/model_banner_view_all.dart';

class DashboadBannerExtraWidget extends StatelessWidget {
  const DashboadBannerExtraWidget({
    super.key,
    required this.texttheme,
  });
  final TextTheme texttheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardBannerViewAllModel.list;
    return SizedBox(
      height: 250,
      child: ListView.builder( itemCount: list.length,
        itemBuilder: (context, index) =>
        GestureDetector(
          onTap: list[index].onPress,
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
                        Image(image: AssetImage(list[index].imageOne)),
                        Image(image: AssetImage(list[index].imageOne)),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      list[index].heading,
                      style: texttheme.titleLarge,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      list[index].subHeading,
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
                  onPressed: list[index].onpressedd,
                  child: Text(IReadMoreAboutThis),),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
