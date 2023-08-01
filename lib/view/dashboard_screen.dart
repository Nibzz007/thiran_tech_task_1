import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:thiran_tech_task_1/controller/dashboard_controller.dart';
import 'package:thiran_tech_task_1/utils/app_color.dart';
import 'package:thiran_tech_task_1/utils/app_images.dart';
import 'package:thiran_tech_task_1/utils/app_size.dart';
import 'package:thiran_tech_task_1/view/widgets/circulator_indicator_widget.dart';
import 'package:thiran_tech_task_1/view/widgets/common_app_bar_widget.dart';

class DashBoardScreen extends StatelessWidget {
  DashBoardScreen({super.key});

  DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonAppBarWidget(
                  horizontal: 0,
                  height: height,
                  widget: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_outlined,
                      size: 18,
                    ),
                  ),
                  widget1: const Icon(Icons.more_vert_outlined),
                ),
                const Text(
                  'Dashboard Design',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kHeigth10,
                const Text(
                  'Today, Shared by - Unbox Digital',
                  style: TextStyle(
                    color: kGrey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                kHeigth10,
                Container(
                  height: height * 0.25,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: kWhite,
                  ),
                  child: Row(
                    children: [
                      CircularIndicatorWidget(
                        progressColor: controller.backgroundColor[1],
                        percent: 0.8,
                        text: 85.toString(),
                      ),
                      kWidth20,
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: SizedBox(
                            height: double.infinity,
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Team',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                kHeigth10,
                                SizedBox(
                                  width: double.infinity,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              child: CircleAvatar(
                                                backgroundImage:
                                                    AssetImage(image1),
                                                radius: 25,
                                              ),
                                            ),
                                            Positioned(
                                              left: 30,
                                              child: CircleAvatar(
                                                radius: 25,
                                                backgroundImage:
                                                    AssetImage(image4),
                                              ),
                                            ),
                                            Positioned(
                                              left: 60,
                                              child: CircleAvatar(
                                                radius: 25,
                                                backgroundImage:
                                                    AssetImage(image3),
                                              ),
                                            ),
                                            Positioned(
                                              left: 90,
                                              child: CircleAvatar(
                                                radius: 25,
                                                backgroundImage:
                                                    AssetImage(image5),
                                              ),
                                            ),
                                            Positioned(
                                              left: 120,
                                              child: CircleAvatar(
                                                radius: 25,
                                                backgroundColor:
                                                    circleAvatarBackColor,
                                                child: CircleAvatar(
                                                  radius: 23,
                                                  backgroundColor:
                                                      circleAvatarColor,
                                                  child: Icon(
                                                    Icons.add,
                                                    color:
                                                        circleAvatarBackColor,
                                                    size: 30,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                kHeigt15,
                                Text(
                                  'Deadline',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                kHeigt15,
                                Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_month_outlined,
                                      color: kGrey,
                                      size: 20,
                                    ),
                                    kWidth10,
                                    Text(
                                      'July 25, 2021 - July 30, 2021',
                                      style: TextStyle(
                                        color: kGrey,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                kHeigth20,
                const Text(
                  'Project progress',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kHeigth10,
                Container(
                  height: height * 0.19,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      3,
                      (index) => Row(
                        children: [
                          Obx(
                            () => Transform.scale(
                              scale: 1.2,
                              child: Checkbox(
                                activeColor: checkBoxFillColor,
                                side: const BorderSide(
                                  width: 2,
                                  color: checkBoxBorderColor,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                value: controller.checkboxStates[index],
                                onChanged: (value) {
                                  controller.checkboxStates[index] = value!;
                                },
                              ),
                            ),
                          ),
                          kWidth10,
                          Text(
                            controller.checkList[index],
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                kHeigth20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Project Overview',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: height * 0.027,
                      width: width * 0.18,
                      decoration: const BoxDecoration(
                        color: kWhite,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Weekly',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: kGrey,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                size: 22,
                                color: kGrey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                kHeigth25,
                Container(
                  height: height * 0.25,
                  decoration: BoxDecoration(
                    color: kGrey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      image7,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                kHeigth20
              ],
            ),
          ),
        ),
      ),
    );
  }
}
