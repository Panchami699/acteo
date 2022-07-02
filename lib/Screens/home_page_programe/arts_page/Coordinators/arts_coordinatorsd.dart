import 'package:flutter/material.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Coordinators/red_dragons/red_dragons.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Coordinators/silent_killers/silent_killers.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Coordinators/violent_lovers/violent_lovers.dart';
//import 'package:myapp/Screens/home_page_academics/exam_seating_arrangements/semester_exam.dart';
//import 'package:myapp/Screens/home_page_academics/exam_seating_arrangements/series_exam.dart';

class ArtsCoordinators extends StatelessWidget {
  const ArtsCoordinators({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Arts Coordinators',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: //const Text('Display the coordianators list of each dvpt'),
          GridView.count(
        crossAxisCount: 2,
        children: [
          InkWell(
            onTap: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const ArtsCoordinatorsRedDragons()));
            }),
            // ignore: avoid_unnecessary_containers
            child: Container(
              //margin: EdgeInsets.all(10),
              child: Card(
                elevation: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    // Image.asset(
                    //   'assets/images/ExamSeatingArrangement.jpeg',
                    //   height: 150,
                    //   width: 200,
                    //   fit: BoxFit.cover,
                    // ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Red Dragons',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 138, 111, 64),
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
                          const ArtsCoordinatorsSilentKillers()));
            }),
            // ignore: avoid_unnecessary_containers
            child: Container(
              //margin: EdgeInsets.all(10),
              child: Card(
                elevation: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    // Image.asset(
                    //   'assets/images/Webinars.jpeg',
                    //   height: 150,
                    //   width: 200,
                    //   fit: BoxFit.cover,
                    // ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Silent Killers',
                        style: TextStyle(
                            fontSize: 13,
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
                          const ArtsCoordinatorsViolentLovers()));
            }),
            // ignore: avoid_unnecessary_containers
            child: Container(
              //margin: EdgeInsets.all(10),
              child: Card(
                elevation: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    // Image.asset(
                    //   'assets/images/Webinars.jpeg',
                    //   height: 150,
                    //   width: 200,
                    //   fit: BoxFit.cover,
                    // ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Viloent Lovers',
                        style: TextStyle(
                            fontSize: 13,
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
    );
  }
}
