import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../utils/app_color.dart';

class CircularIndicatorWidget extends StatelessWidget {
  const CircularIndicatorWidget({
    super.key,
    required this.progressColor,
    required this.percent,
    required this.text,
  });

  final Color progressColor;
  final double percent;
  final String text;

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 50,
      lineWidth: 10,
      percent: percent,
      progressColor: progressColor,
      backgroundColor: progressBarBackgroundColor,
      circularStrokeCap: CircularStrokeCap.round,
      center: Text(
        '$text%',
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}