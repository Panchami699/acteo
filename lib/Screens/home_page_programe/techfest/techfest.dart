import 'package:flutter/material.dart';
import 'package:myapp/Screens/home_page_programe/techfest/Coordinators/techfest_coordinators.dart';
import 'package:myapp/Screens/home_page_programe/techfest/Event%20Details/Tech%20Events/techfest_tech_events.dart';
import 'package:myapp/Screens/home_page_programe/techfest/Event%20Details/techfest_event_details.dart';
import 'package:myapp/Screens/home_page_programe/techfest/Media/techfest_media.dart';
import 'package:myapp/Screens/home_page_programe/techfest/Registration/techfest_registration.dart';
import 'package:myapp/Screens/home_page_programe/techfest/Scheduled%20Events/techfest_scheduled_events.dart';
import 'package:myapp/Screens/home_page_programe/techfest/Volunteers/techfest_volunteers.dart';

/*The path for this page is :
homeNavigationBar --> programs */

class Techfest extends StatelessWidget {
  const Techfest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tech Fest',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              OutlinedButton.icon(
                label: const Text(
                  'Event Details',
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
                        return const TechfestEventDetails();
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
                        return const TechfestRegistration();
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
                      fontSize: 39,
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
                        return const TechfestScheduledEvents();
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
                        return const TechfestCoordinators();
                      },
                    ),
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
                        return const TechfestVolunteers();
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
                      return const TechfestMedia();
                    }),
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
