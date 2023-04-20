import 'package:flutter/material.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/text_string.dart';


class DashboardSearchBox extends StatelessWidget {
  const DashboardSearchBox({
    super.key,
    required this.texttheme,
  });

  final TextTheme texttheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(width: 4),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            IDashBoardSearch,
            style: texttheme.headlineMedium?.apply(
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image(image: AssetImage(IDashboardScreenSearchMic),),
          ),
        ],
      ),
    );
  }
}
