import 'package:flutter/material.dart';

import '../../utils/app_color.dart';
import '../../utils/app_images.dart';

class CommonAppBarWidget extends StatelessWidget {
  const CommonAppBarWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.1,
      decoration: const BoxDecoration(),
      child: const Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(image6),
            ),
            Icon(
              Icons.search,
              color: kBlack,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}