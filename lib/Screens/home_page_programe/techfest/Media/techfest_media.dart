import 'package:flutter/material.dart';
//import 'package:myapp/Screens/home_page_academics/exam_seating_arrangements/semester_exam.dart';
//import 'package:myapp/Screens/home_page_academics/exam_seating_arrangements/series_exam.dart';

class TechfestMedia extends StatelessWidget {
  const TechfestMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Media',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: const Text(
          'Display links that will direct the user to youtube videos'),
    );
  }
}