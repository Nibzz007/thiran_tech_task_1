import 'package:get/get.dart';

class DashboardController extends GetxController {
  RxList<bool> checkboxStates = List.generate(3, (_) => false).obs;
  List<String> checkList = [
    'Create user flow',
    'Create wire frame',
    'Transform to visual design',
  ];
}
