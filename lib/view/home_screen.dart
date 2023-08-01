import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thiran_tech_task_1/controller/home_controller.dart';
import 'package:thiran_tech_task_1/utils/app_color.dart';
import 'package:thiran_tech_task_1/utils/app_size.dart';
import 'package:thiran_tech_task_1/view/widgets/common_app_bar_widget.dart';
import 'package:thiran_tech_task_1/view/widgets/container_widget.dart';
import 'package:thiran_tech_task_1/view/widgets/main_heading_text_widget.dart';
import '../utils/app_images.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  HomeController controller = Get.put(HomeController());

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
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Hello',
                  style: TextStyle(
                    fontSize: 18,
                    color: homeTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              kHeigth10,
              const MainHeadTextWidget(
                text: 'Alex Marconi',
              ),
              kHeigt15,
              Row(
                children: [
                  Expanded(
                    child: ContainerWidget(
                      height: height,
                      width: width,
                      right: 5,
                      left: 15,
                      color: containerColor1,
                      icon: Icons.access_time,
                      data: 'In Progress',
                    ),
                  ),
                  Expanded(
                    child: ContainerWidget(
                      height: height,
                      width: width,
                      right: 15,
                      left: 5,
                      color: containerColor2,
                      data: 'Ongoing',
                      icon: Icons.swap_horiz_outlined,
                    ),
                  ),
                ],
              ),
              kHeigth10,
              Row(
                children: [
                  Expanded(
                    child: ContainerWidget(
                      height: height,
                      width: width,
                      right: 5,
                      left: 15,
                      color: containerColor3,
                      data: 'Completed',
                      icon: Icons.event_available_outlined,
                    ),
                  ),
                  Expanded(
                    child: ContainerWidget(
                      height: height,
                      width: width,
                      right: 15,
                      left: 5,
                      color: containerColor4,
                      data: 'Cancel',
                      icon: Icons.event_busy_outlined,
                    ),
                  ),
                ],
              ),
              kHeigth25,
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Daily Task',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'All Task',
                          style: TextStyle(color: kGrey, fontSize: 15),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: kGrey,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              kHeigth10,
              Column(
                children: List.generate(
                  3,
                  (index) => Obx(
                    () => Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                        bottom: 10,
                      ),
                      child: Container(
                        height: height * 0.1,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kWhite,
                        ),
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 1.4,
                              child: Checkbox(
                                activeColor: controller.backgroundColor[index],
                                side: const BorderSide(
                                  width: 1,
                                  color: kGrey,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                value: controller.checkboxStates[index],
                                onChanged: (value) {
                                  controller.checkboxStates[index] = value!;
                                },
                              ),
                            ),
                            kWidth5,
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.checkList[index],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.45,
                                    height: height * 0.01,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: LinearProgressIndicator(
                                        value: controller.indicatorList[index],
                                        backgroundColor:
                                            progressBarBackgroundColor,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          controller.backgroundColor[index],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            kWidth20,
                            const Expanded(
                              flex: 6,
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(image1),
                                      radius: 18,
                                    ),
                                  ),
                                  Positioned(
                                    left: 20,
                                    child: CircleAvatar(
                                      radius: 18,
                                      backgroundImage: AssetImage(image3),
                                    ),
                                  ),
                                  Positioned(
                                    left: 40,
                                    child: CircleAvatar(
                                      radius: 18,
                                      backgroundImage: AssetImage(image5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Flexible(
                              flex: 2,
                              child: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: kGrey,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
