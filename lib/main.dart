import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thiran_tech_task_1/view/bottom_nav_bar.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BottomNavBarWidget(),
      theme: ThemeData(),
    );
  }
}
