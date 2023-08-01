import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thiran_tech_task_1/utils/app_color.dart';

class HomeController extends GetxController {
  RxList<bool> checkboxStates = List.generate(3, (_) => false).obs;
  List<String> checkList = [
    'App Animation',
    'Dashboard Design',
    'UI/UX Design',
  ];
  List<double> indicatorList = [0.8, 1, 0.3];
  List<Color> backgroundColor = [
    indicatorColor1,
    indicatorColor2,
    indicatorColor3,
  ];
}
