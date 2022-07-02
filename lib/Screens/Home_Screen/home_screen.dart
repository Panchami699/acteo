import 'package:flutter/material.dart';
import 'package:myapp/Screens/Home_Screen/widget/bottom_navigation.dart';
import 'package:myapp/Screens/homescreen_from_navigation_bar/homescreen_navigation%20bar.dart';
import 'package:myapp/Screens/notification/notification.dart';
import 'package:myapp/Screens/profile/profile.dart';
import 'package:myapp/Screens/home_page_programe/home_page_programe.dart';
import 'package:myapp/Screens/test_here/testing_area.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

//********Creating 3 separate pages from the navigation bar***************************** */
  final _pages = [
    const homeScreenNavigatorBar(),
    const NotificationInNavigationBar(),
    const ProfileInNavigationBar(),
    //const TestingArea()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const HomePageBottomNavigation(),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectedIndexNotifier,
          builder: (BuildContext context, int updatedIndex, _) {
            return _pages[updatedIndex];
          },
        ),
      ),
    );
  }
}
