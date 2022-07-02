import 'package:flutter/material.dart';
import 'package:myapp/Screens/Home_Screen/home_screen.dart';

class HomePageBottomNavigation extends StatelessWidget {
  const HomePageBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: HomeScreen.selectedIndexNotifier,
      builder: (BuildContext ctx, int updatedIndex, Widget? _) {
        return BottomNavigationBar(
            currentIndex: updatedIndex,
            onTap: (newIndex) {
              HomeScreen.selectedIndexNotifier.value = newIndex;
            },
            type: BottomNavigationBarType.fixed, // Fixed
            backgroundColor: Colors.black, // <-- This works for fixed
            selectedItemColor: Colors.greenAccent,
            unselectedItemColor: Colors.grey,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                //backgroundColor: Color.fromARGB(255, 130, 211, 133)
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notifications',
                //backgroundColor: Color.fromARGB(255, 231, 221, 134)
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
                //backgroundColor: Color.fromARGB(255, 134, 184, 231)
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.code),
              //   label: 'test here',
              //   //backgroundColor: Color.fromARGB(255, 134, 184, 231)
              // )
            ]);
      },
    );
  }
}
