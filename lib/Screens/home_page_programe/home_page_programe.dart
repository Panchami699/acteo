import 'package:flutter/material.dart';
import 'package:myapp/Screens/homescreen_from_navigation_bar/homescreen_navigation%20bar.dart';

class HomePageProgrameSection extends StatelessWidget {
  const HomePageProgrameSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Programs',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Column(
          children: [
//            const Text('the programe inside the homescreen'),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pop(MaterialPageRoute(builder: (ctx) {
                    return const homeScreenNavigatorBar();
                  }));
                },
                icon: const Icon(
                  Icons.arrow_forward,
                ),
                label: const Text('Program'))
          ],
        ),
      ),
    );
  }
}
