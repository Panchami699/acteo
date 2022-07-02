import 'package:flutter/material.dart';
import 'package:myapp/Screens/Admin/academics/admin_academics.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Coordinators/arts_coordinatorsd.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Events/arts_events_list.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Media/arts_media.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Registration/arts_registration.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Result/arts_result.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Scheduled%20Events/scheduled_events.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Score/arts_score.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Score/arts_team_score.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Volunteers/arts_volunteers.dart';
//import 'package:myapp/Screens/home_page_programe/arts_page/arts_registration.dart';

/*The path for this page is :
homeNavigationBar --> programs */

class ArtsPage extends StatelessWidget {
  const ArtsPage({Key? key, this.title}) : super(key: key);
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Arts',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),

      /*This code is created for the fuctioning of  the tabs in the page of test here */

      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 234, 172, 172),
                  //primary: Colors.amberAccent,
                  elevation: 5,
                  shadowColor: Color.fromARGB(255, 128, 127, 127)
                  //B(255, 210, 143, 143)B(255, 116, 113, 113), //<-- SEE HERE
                  ),
              label: const Text(
                'Score',
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 245, 95, 95)),
              ),
              icon: const Icon(
                Icons.arrow_right_outlined,
                color: Color.fromARGB(255, 247, 13, 13),
                size: 50,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return UserArtsScore();
                      //ArtsScore();
                    },
                  ),
                );
              },
            ),
            const Padding(padding: EdgeInsets.all(8.00)),
            // const TextField(
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(
            //         borderSide: BorderSide(color: Colors.teal)),
            //     labelText: 'Enter Email',
            //   ),
            // ),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 251, 206, 240),
                  primary: Color.fromARGB(255, 234, 144, 193),
                  elevation: 5,
                  shadowColor: Color.fromARGB(255, 128, 127, 127)),
              label: const Text(
                'Scheduled Events',
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 208, 114, 167)),
              ),
              icon: const Icon(
                Icons.arrow_right_outlined,
                color: Color.fromARGB(255, 214, 13, 147),
                size: 50,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return const ArtsScheduledEvents();
                    },
                  ),
                );
              },
            ),

            const Padding(padding: EdgeInsets.all(8.00)),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 234, 228, 181),
                  primary: Colors.amberAccent,
                  elevation: 5,
                  shadowColor: Color.fromARGB(255, 128, 127, 127)),
              label: const Text(
                'Events List',
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 235, 178, 46)),
              ),
              icon: const Icon(
                Icons.arrow_right_outlined,
                color: Color.fromARGB(255, 223, 172, 6),
                size: 50,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return const ArtsEventsList();
                    },
                  ),
                );
              },
            ),
            const Padding(padding: EdgeInsets.all(8.00)),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 181, 234, 233),
                  primary: Colors.amberAccent,
                  elevation: 5,
                  shadowColor: Color.fromARGB(255, 128, 127, 127)),
              label: const Text(
                'Results',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 38, 174, 184)),
              ),
              icon: const Icon(
                Icons.arrow_right_outlined,
                color: Color.fromARGB(255, 2, 180, 207),
                size: 50,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return const ArtsResults();
                    },
                  ),
                );
              },
            ),
            const Padding(padding: EdgeInsets.all(8.00)),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 145, 163, 231),
                  primary: Color.fromARGB(255, 145, 163, 231),
                  elevation: 5,
                  shadowColor: Color.fromARGB(255, 128, 127, 127)),
              label: const Text(
                'Coordinators',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 72, 86, 237)),
              ),
              icon: const Icon(
                Icons.arrow_right_outlined,
                color: Color.fromARGB(255, 4, 30, 200),
                size: 50,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) {
                    return const ArtsCoordinators();
                  }),
                );
              },
            ),
            const Padding(padding: EdgeInsets.all(8.00)),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 223, 181, 234),
                  primary: Colors.amberAccent,
                  elevation: 5,
                  shadowColor: Color.fromARGB(255, 128, 127, 127)),
              label: const Text(
                'Volunteers',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 195, 82, 230)),
              ),
              icon: const Icon(
                Icons.arrow_right_outlined,
                color: Color.fromARGB(255, 141, 4, 214),
                size: 50,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return const ArtsVolunteers();
                    },
                  ),
                );
              },
            ),
            const Padding(padding: EdgeInsets.all(8.00)),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 189, 244, 180),
                  primary: Colors.amberAccent,
                  elevation: 5,
                  shadowColor: Color.fromARGB(255, 128, 127, 127)),
              label: const Text(
                'Volunteer Registration',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 97, 205, 68)),
              ),
              icon: const Icon(
                Icons.arrow_right_outlined,
                color: Color.fromARGB(255, 26, 177, 7),
                size: 50,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return const ArtsRegistration();
                    },
                  ),
                );
              },
            ),
            // const Padding(padding: EdgeInsets.all(8.00)),
            // OutlinedButton.icon(
            //   label: const Text(
            //     'Media',
            //     style: TextStyle(
            //         fontSize: 40,
            //         fontWeight: FontWeight.bold,
            //         color: Color.fromARGB(255, 110, 31, 68)),
            //   ),
            //   icon: const Icon(
            //     Icons.person,
            //     color: Colors.black,
            //     size: 40,
            //   ),
            //   onPressed: () {
            //     Navigator.of(context).push(
            //       MaterialPageRoute(
            //         builder: (ctx) {
            //           return const ArtsMedia();
            //         },
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
