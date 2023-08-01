import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_color.dart';

class ProjectController extends GetxController {
  var selectedIndex = 0.obs;
  void setSelectedIndex(int index) {
    selectedIndex.value = index;
  }

  @override
  void onInit() {
    setSelectedIndex(selectedIndex.value);
    super.onInit();
  }

  RxList<bool> containerList = List.generate(3, (_) => false).obs;
  List<String> checkList = [
    'App Animation',
    'Dashboard Design',
    'UI/UX Design',
  ];
  List<String> checkSubList = [
    'Unbox Digital',
    'Ui Been',
    'Unbox',
  ];
  List<String> monthList = [
    'June',
    'July',
    'August',
  ];
  List<int> dateList = [15, 20, 25];
  List<double> indicatorList = [0.65, 0.85, 0.3];
  List<int> indicatorTextlist = [65,85,30];
  List<Color> backgroundColor = [
    indicatorColor1,
    indicatorColor2,
    indicatorColor3,
  ];
}
