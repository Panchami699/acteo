import 'package:flutter/material.dart';
// import 'package:myapp/Screens/adminscreen/eventschedule.dart';
import 'package:myapp/Screens/score.dart';
// import 'package:myapp/Screens/adminscreen/vlunteer%20reg.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Coordinators/arts_coordinatorsd.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Events/arts_events_list.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Media/arts_media.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Registration/arts_registration.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Result/arts_result.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Scheduled%20Events/scheduled_events.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Score/arts_score.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Volunteers/arts_volunteers.dart';
//import 'package:myapp/Screens/home_page_programe/arts_page/arts_registration.dart';

/*The path for this page is :
homeNavigationBar --> programs */

class adminpage extends StatelessWidget {
  const adminpage({Key? key, this.title}) : super(key: key);
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
        child: Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              OutlinedButton.icon(
                label: const Text(
                  'Score',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 26, 99, 97)),
                ),
                icon: const Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return const scoreadd();
                      },
                    ),
                  );
                },
              ),
              // const Padding(padding: EdgeInsets.all(8.00)),
              // OutlinedButton.icon(
              //   label: const Text(
              //     'Volunteer ',
              //     style: TextStyle(
              //         fontSize: 40,
              //         fontWeight: FontWeight.bold,
              //         color: Color.fromARGB(255, 116, 31, 79)),
              //   ),
              //   icon: const Icon(
              //     Icons.person,
              //     color: Colors.black,
              //     size: 30,
              //   ),
              //   onPressed: () {
              //     Navigator.of(context).push(
              //       MaterialPageRoute(
              //         builder: (ctx) {
              //           return const volunteereg();
              //         },
              //       ),
              //     );
              //   },
              // ),
              // const Padding(padding: EdgeInsets.all(8.00)),
              // OutlinedButton.icon(
              //   label: const Text(
              //     'event schedule',
              //     style: TextStyle(
              //         fontSize: 40,
              //         fontWeight: FontWeight.bold,
              //         color: Color.fromARGB(255, 47, 110, 29)),
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
              //           return const scheduleevent();
              //         },
              //       ),
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
