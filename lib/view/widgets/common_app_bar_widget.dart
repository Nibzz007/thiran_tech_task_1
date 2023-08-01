import 'package:flutter/material.dart';

class CommonAppBarWidget extends StatelessWidget {
  const CommonAppBarWidget({
    super.key,
    required this.height, required this.widget, required this.widget1, required this.horizontal,
  });

  final double height;
  final Widget widget;
  final Widget widget1;
  final double horizontal;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.1,
      decoration: const BoxDecoration(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontal),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            widget,
            widget1
          ],
        ),
      ),
    );
  }
}