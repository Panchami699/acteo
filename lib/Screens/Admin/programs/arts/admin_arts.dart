import 'package:flutter/material.dart';
import 'package:myapp/Screens/Admin/programs/arts/admin%20media/admin_arts_media.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Coordinators/arts_coordinatorsd.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Events/arts_events_list.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Media/arts_media.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Registration/arts_registration.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Result/arts_result.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Scheduled%20Events/scheduled_events.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Score/arts_score.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Volunteers/arts_volunteers.dart';
import 'package:myapp/brototype%20admin/artscore_homepage.dart';
import 'package:myapp/db/models/brototype_arts_score.dart';

import '../../../../brototype admin/arts_score.dart';
//import 'package:myapp/Screens/home_page_programe/arts_page/arts_registration.dart';

/*The path for this page is :
homeNavigationBar --> programs */

class AdminArts extends StatelessWidget {
  const AdminArts({Key? key, this.title}) : super(key: key);
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
                        return AdminArtsScoreFromUtube();
                        //AdminArtsScoreFromUtube();
                      },
                    ),
                  );
                },
              ),
              const Padding(padding: EdgeInsets.all(8.00)),
              OutlinedButton.icon(
                label: const Text(
                  'Scheduled Events',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 116, 31, 79)),
                ),
                icon: const Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 30,
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
                label: const Text(
                  'Registration',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 47, 110, 29)),
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
                        return const ArtsRegistration();
                      },
                    ),
                  );
                },
              ),
              const Padding(padding: EdgeInsets.all(8.00)),
              OutlinedButton.icon(
                label: const Text(
                  'Events List',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 99, 78, 29)),
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
                        return const ArtsEventsList();
                      },
                    ),
                  );
                },
              ),
              const Padding(padding: EdgeInsets.all(8.00)),
              OutlinedButton.icon(
                label: const Text(
                  'Results',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 30, 71, 99)),
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
                        return const ArtsResults();
                      },
                    ),
                  );
                },
              ),
              const Padding(padding: EdgeInsets.all(8.00)),
              OutlinedButton.icon(
                label: const Text(
                  'Coordinators',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 93, 36, 25)),
                ),
                icon: const Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 40,
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
                label: const Text(
                  'Volunteers',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 92, 31, 110)),
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
                        return const ArtsVolunteers();
                      },
                    ),
                  );
                },
              ),
              const Padding(padding: EdgeInsets.all(8.00)),
              OutlinedButton.icon(
                label: const Text(
                  'Media',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 110, 31, 68)),
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
                        return const AdminArtsMedia();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
