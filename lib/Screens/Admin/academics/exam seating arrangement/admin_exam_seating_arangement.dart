import 'package:flutter/material.dart';
import 'package:myapp/Screens/home_page_academics/exam_seating_arrangements/semester_exam.dart';
import 'package:myapp/Screens/home_page_academics/exam_seating_arrangements/series_exam.dart';

class ExamSeatingArrangement extends StatelessWidget {
  const ExamSeatingArrangement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Exam Seating Arrangements',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),

      body: GridView.count(
        crossAxisCount: 1,
        children: [
          InkWell(
            onTap: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AdminSeriesExamination(
                            name: 'Series',
                          )));
            }),
            // ignore: avoid_unnecessary_containers
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              //margin: EdgeInsets.all(10),
              child: Card(
                elevation: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    // Image.asset(
                    //   'assets/images/ExamSeatingArrangement.jpeg',
                    //   height: 150,
                    //   width: 200,
                    //   fit: BoxFit.cover,
                    // ),
                    Icon(
                      Icons.book_sharp,
                      size: 65,
                      color: Colors.redAccent,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Internal Series Examination',
                        style: TextStyle(
                            fontSize: 45,
                            color: Color.fromARGB(255, 71, 65, 90),
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const AdminSemesterExam(name: 'Semester exam')));
            }),
            // ignore: avoid_unnecessary_containers
            child: Container(
              //margin: EdgeInsets.all(10),
              child: Card(
                elevation: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    // Image.asset(
                    //   'assets/images/Webinars.jpeg',
                    //   height: 150,
                    //   width: 200,
                    //   fit: BoxFit.cover,
                    // ),
                    Icon(
                      Icons.book_sharp,
                      size: 65,
                      color: Color.fromARGB(255, 82, 154, 255),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Semester Exams',
                        style: TextStyle(
                            fontSize: 45,
                            color: Color.fromARGB(255, 71, 65, 90),
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

      // children: [
      //   ElevatedButton(
      //       onPressed: () {
      //         Navigator.of(context).pop();
      //       },
      //       child: Text(name))
      // ],
    );
  }
}
