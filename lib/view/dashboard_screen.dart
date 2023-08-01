import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:thiran_tech_task_1/controller/dashboard_controller.dart';
import 'package:thiran_tech_task_1/utils/app_color.dart';
import 'package:thiran_tech_task_1/utils/app_images.dart';
import 'package:thiran_tech_task_1/utils/app_size.dart';

class DashBoardScreen extends StatelessWidget {
  DashBoardScreen({super.key});

  DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        actions: const [
          Icon(Icons.more_vert),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dashboard Design',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            kHeigth10,
            const Text('Today, Shared by - Unbox Digital'),
            kHeigth10,
            Container(
              height: height * 0.25,
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: kWhite),
              child: Row(
                children: [
                  CircularPercentIndicator(
                    radius: 50,
                    lineWidth: 10,
                    percent: 0.80,
                    progressColor: progressBarColor,
                    backgroundColor: progressBarBackgroundColor,
                    circularStrokeCap: CircularStrokeCap.round,
                    center: const Text(
                      '85%',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                                            backgroundImage: AssetImage(image1),
                                            radius: 25,
                                          ),
                                        ),
                                        Positioned(
                                          left: 30,
                                          child: CircleAvatar(
                                            radius: 25,
                                            backgroundImage: AssetImage(image4),
                                          ),
                                        ),
                                        Positioned(
                                          left: 60,
                                          child: CircleAvatar(
                                            radius: 25,
                                            backgroundImage: AssetImage(image3),
                                          ),
                                        ),
                                        Positioned(
                                          left: 90,
                                          child: CircleAvatar(
                                            radius: 25,
                                            backgroundImage: AssetImage(image5),
                                          ),
                                        ),
                                        Positioned(
                                          left: 120,
                                          child: CircleAvatar(
                                            radius: 25,
                                            backgroundColor:
                                                circleAvatarBackColor,
                                            child: CircleAvatar(
                                              radius: 22,
                                              backgroundColor:
                                                  circleAvatarColor,
                                              child: Icon(
                                                Icons.add,
                                                color: circleAvatarBackColor,
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
                            )
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
          ],
        ),
      ),
    );
  }
}
