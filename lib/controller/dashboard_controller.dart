import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_color.dart';

class DashboardController extends GetxController {
  RxList<bool> checkboxStates = List.generate(3, (_) => false).obs;
  List<String> checkList = [
    'Create user flow',
    'Create wire frame',
    'Transform to visual design',
  ];
  List<Color> backgroundColor = [
    indicatorColor1,
    indicatorColor2,
    indicatorColor3,
  ];
}
