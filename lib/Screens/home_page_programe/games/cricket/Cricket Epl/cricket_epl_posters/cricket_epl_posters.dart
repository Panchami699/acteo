import 'package:flutter/material.dart';
//import 'package:myapp/Screens/home_page_academics/exam_seating_arrangements/semester_exam.dart';
//import 'package:myapp/Screens/home_page_academics/exam_seating_arrangements/series_exam.dart';

class CricketEplPoster extends StatelessWidget {
  const CricketEplPoster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Poster',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: const Text('Display the promo posters'),
    );
  }
}
