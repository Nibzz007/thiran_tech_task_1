import 'package:flutter/material.dart';
import 'package:thiran_tech_task_1/utils/app_color.dart';
import 'package:thiran_tech_task_1/utils/app_size.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.height,
    required this.width,
    required this.right,
    required this.color,
    required this.icon,
    required this.data,
  });

  final double height;
  final double width;
  final double right;
  final Color color;
  final IconData icon;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10,
        right: right,
      ),
      child: Container(
        height: height * 0.13,
        width: width * 0.5,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: kWhite,
              size: 28,
            ),
            kHeigth10,
            Text(
              data,
              style: const TextStyle(
                color: kWhite,
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),
            )
          ],
        ),
      ),
    );
  }
}
