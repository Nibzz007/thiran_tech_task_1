import 'package:botton_nav_bar/botton_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:thiran_tech_task_1/view/home_screen.dart';
import 'package:thiran_tech_task_1/view/mail_screen.dart';
import 'package:thiran_tech_task_1/view/project_screen.dart';
import 'package:thiran_tech_task_1/view/settings_screen.dart';

import '../utils/app_color.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavBar(
        fabElevation: 10,
        notchedRadius: 30,
        fabBackGroundColor: floatingButtonColor,
        centerNotched: true,
        fabIcon: const Icon(
          Icons.add,
          size: 30,
        ),
        bottomItems: <BottomBarItem>[
          BottomBarItem(
            bottomItemSelectedColor: selectedIconColor,
            label: '',
            screen: HomeScreen(),
            selectedIcon: Icons.home_filled,
          ),
          BottomBarItem(
            bottomItemSelectedColor: selectedIconColor,
            label: '',
            screen: const ProjectScreen(),
            selectedIcon: Icons.feed,
          ),
          BottomBarItem(
            bottomItemSelectedColor: selectedIconColor,
            label: '',
            selectedIcon: Icons.mail_rounded,
            screen: const MailScreen(),
          ),
          BottomBarItem(
            bottomItemSelectedColor: selectedIconColor,
            label: '',
            screen: const SettingsScreen(),
            selectedIcon: Icons.settings,
          )
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:thiran_tech_task_1/utils/app_color.dart';
// import 'package:thiran_tech_task_1/view/home_screen.dart';
// import 'package:thiran_tech_task_1/view/mail_screen.dart';
// import 'package:thiran_tech_task_1/view/project_screen.dart';
// import 'package:thiran_tech_task_1/view/settings_screen.dart';

// class BottomNavBarWidget extends StatefulWidget {
//   BottomNavBarWidget({super.key});

//   @override
//   State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
// }

// class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
//   int selectedIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kWhite,
//       floatingActionButton: FloatingActionButton(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
//         onPressed: () {},
//         backgroundColor: floatingButtonColor,
//         child: const Icon(
//           Icons.add,
//           size: 30,
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(
//         shape: const CircularNotchedRectangle(),
//         notchMargin: 10,
//         height: 75,
//         color: kWhite,
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             IconButton(
//               onPressed: () {
                
//               },
//               icon: const Icon(
//                 Icons.home_filled,
//               ),
//             ),
//             IconButton(
//               onPressed: () {
               
//               },
//               icon: const Icon(Icons.feed),
//             ),
//             IconButton(
//               onPressed: () {},
//               icon: const Icon(Icons.mail_rounded),
//             ),
//             IconButton(
//               onPressed: () {},
//               icon: const Icon(Icons.settings),
//             ),
//           ],
//         ),
//       ),
//     );
//     // Scaffold(
//     //   body: getPageAtIndex(selectedIndex),
//     //   bottomNavigationBar:  BottomNavigationBar(
//     //       currentIndex: selectedIndex,
//     //       onTap:(value) {
//     //         setState(() {
//     //           selectedIndex = value;
//     //         });
//     //       },
//     //       items: const [
//     //         BottomNavigationBarItem(
//     //           icon: Icon(Icons.home_filled,),
//     //           label: ''
//     //         ),
//     //         BottomNavigationBarItem(
//     //           icon: Icon(Icons.feed),
//     //           label: ''
//     //         ),
//     //         BottomNavigationBarItem(
//     //           icon: Icon(Icons.mail_rounded),
//     //           label: ''
//     //         ),
//     //         BottomNavigationBarItem(
//     //           icon: Icon(Icons.settings),
//     //           label: ''
//     //         ),
//     //       ],
//     //       unselectedItemColor: unselectedIconColor,
//     //       selectedItemColor: selectedIconColor,
//     //     ),

//     //   floatingActionButton: FloatingActionButton(
//     //     onPressed: () {},
//     //   ),
//     //   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//     // );
//   }

//   Widget getPageAtIndex(int index) {
//     switch (index) {
//       case 0:
//         return const HomeScreen();
//       case 1:
//         return const ProjectScreen();
//       case 2:
//         return const MailScreen();
//       case 3:
//         return const SettingsScreen();
//       default:
//         return Container();
//     }
//   }
// }
