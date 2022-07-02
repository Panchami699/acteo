import 'package:flutter/material.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Registration/OffStage%20Events/offstage_event_registration.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Registration/Onstage%20Events/onstage_event_registration.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Registration/Volunteers/volunteers_registration.dart';
import 'package:myapp/Screens/home_page_programe/techfest/Registration/Events/techfest_events_registration.dart';
import 'package:myapp/Screens/home_page_programe/techfest/Registration/Volunteers/techfest_volunteers_registration.dart';
//import 'package:myapp/Screens/home_page_academics/exam_seating_arrangements/semester_exam.dart';
//import 'package:myapp/Screens/home_page_academics/exam_seating_arrangements/series_exam.dart';

class TechfestRegistration extends StatelessWidget {
  const TechfestRegistration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Registration',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: //const Text(
          GridView.count(
        crossAxisCount: 2,
        children: [
          InkWell(
            onTap: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const TechfestRegistrationEvents()));
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
                        'Events',
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
                          const TechfestRegistrationVolunteers()));
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
                        'Volunteers',
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
      ), //'Display the registration for the events and the volunteers'),
    );
  }
}
