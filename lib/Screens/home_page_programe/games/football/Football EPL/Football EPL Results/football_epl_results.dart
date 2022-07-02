import 'package:flutter/material.dart';
//import 'package:myapp/Screens/home_page_academics/exam_seating_arrangements/semester_exam.dart';
//import 'package:myapp/Screens/home_page_academics/exam_seating_arrangements/series_exam.dart';

class FootballEplResult extends StatelessWidget {
  const FootballEplResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Result',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: const Text('Display match result of each matches'),
    );
  }
}
