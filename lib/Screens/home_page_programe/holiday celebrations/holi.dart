import 'package:flutter/material.dart';

/*The path for this page is :
homeNavigationBar --> programs */

class Holi extends StatelessWidget {
  const Holi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Christmas',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),

      /*This code is created for the fuctioning of  the tabs in the page of test here */

      body: const Text(
          'Display the poster for the event and display the details below'),
    );
  }
}
