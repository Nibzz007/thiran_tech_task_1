import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thiran_tech_task_1/controller/project_controller.dart';
import 'package:thiran_tech_task_1/utils/app_color.dart';
import 'package:thiran_tech_task_1/utils/app_size.dart';
import 'package:thiran_tech_task_1/view/dashboard_screen.dart';
import 'package:thiran_tech_task_1/view/widgets/circulator_indicator_widget.dart';
import 'package:thiran_tech_task_1/view/widgets/common_app_bar_widget.dart';
import 'package:thiran_tech_task_1/view/widgets/main_heading_text_widget.dart';

import '../utils/app_images.dart';

class ProjectScreen extends StatelessWidget {
  ProjectScreen({super.key});

  ProjectController controller = Get.put(ProjectController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonAppBarWidget(
                horizontal: 15,
                height: height,
                widget: const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(image6),
                ),
                widget1: const Icon(
                  Icons.search,
                  color: kBlack,
                  size: 30,
                ),
              ),
              kHeigt15,
              const MainHeadTextWidget(
                text: 'Project',
              ),
              kHeigt15,
              Container(
                width: double.infinity,
                height: height * 0.055,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: kWhite,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: buildItem(
                        index: 0,
                        width: width,
                        text: 'All',
                      ),
                    ),
                    Expanded(
                      child: buildItem(
                        index: 1,
                        width: width,
                        text: 'Ongoing',
                      ),
                    ),
                    Expanded(
                      child: buildItem(
                        index: 2,
                        width: width,
                        text: 'Completed',
                      ),
                    ),
                  ],
                ),
              ),
              kHeigth10,
              Column(
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: InkWell(
                      onTap: () => Get.to(DashBoardScreen()),
                      child: Container(
                        height: height * 0.25,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      controller.checkList[index],
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    kHeigth10,
                                    Row(
                                      children: [
                                        Text(
                                          'Today, Shared by - ${controller.checkSubList[index]}',
                                          style: const TextStyle(
                                              color: kGrey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    kHeigt15,
                                    const Text(
                                      'Team',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    kHeigt15,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: height * 0.055,
                                          width: width * 0.4,
                                          child: const Stack(
                                            children: [
                                              Positioned(
                                                child: CircleAvatar(
                                                  backgroundImage:
                                                      AssetImage(image1),
                                                  radius: 18,
                                                ),
                                              ),
                                              Positioned(
                                                left: 20,
                                                child: CircleAvatar(
                                                  radius: 18,
                                                  backgroundImage:
                                                      AssetImage(image4),
                                                ),
                                              ),
                                              Positioned(
                                                left: 40,
                                                child: CircleAvatar(
                                                  radius: 18,
                                                  backgroundImage:
                                                      AssetImage(image3),
                                                ),
                                              ),
                                              Positioned(
                                                left: 60,
                                                child: CircleAvatar(
                                                  radius: 18,
                                                  backgroundImage:
                                                      AssetImage(image5),
                                                ),
                                              ),
                                              Positioned(
                                                left: 80,
                                                child: CircleAvatar(
                                                  radius: 19,
                                                  backgroundColor:
                                                      circleAvatarBackColor,
                                                  child: CircleAvatar(
                                                    radius: 18,
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
                                    kHeigth10,
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.calendar_month_outlined,
                                          color: kGrey,
                                          size: 18,
                                        ),
                                        kWidth10,
                                        Expanded(
                                          child: Text(
                                            '${controller.monthList[index]} ${controller.dateList[index]}, 2021 - ${controller.monthList[index]} ${controller.dateList[index] + 7}, 2021',
                                            style: const TextStyle(
                                              color: kGrey,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              kWidth10,
                              Expanded(
                                child: CircularIndicatorWidget(
                                  progressColor:
                                      controller.backgroundColor[index],
                                  percent: controller.indicatorList[index],
                                  text: controller.indicatorTextlist[index]
                                      .toString(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItem(
      {required int index, required double width, required String text}) {
    return InkWell(
      onTap: () => Get.find<ProjectController>().setSelectedIndex(index),
      child: Obx(
        () {
          final controller = Get.find<ProjectController>();
          return Container(
            height: double.infinity,
            width: width / 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: controller.selectedIndex == index
                  ? selectedIconColor
                  : kWhite,
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: controller.selectedIndex == index ? kWhite : kBlack,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
