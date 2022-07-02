import 'package:flutter/material.dart';
import 'package:myapp/Screens/home_page_programe/techfest/Event%20Details/Games/techfest_games.dart';
import 'package:myapp/Screens/home_page_programe/techfest/Event%20Details/Presentations/techfest_presentation.dart';
import 'package:myapp/Screens/home_page_programe/techfest/Event%20Details/Tech%20Events/techfest_tech_events.dart';
import 'package:myapp/Screens/home_page_programe/techfest/Event%20Details/Techtalk/techfest_techtalk.dart';
import 'package:myapp/Screens/home_page_programe/techfest/Event%20Details/Workshop/techfest_workshop.dart';
//import 'package:myapp/Screens/home_page_academics/exam_seating_arrangements/semester_exam.dart';
//import 'package:myapp/Screens/home_page_academics/exam_seating_arrangements/series_exam.dart';

class TechfestEventDetails extends StatelessWidget {
  const TechfestEventDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Events Details',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: //const Text('List of the volunteers and their contact info'),
          SafeArea(
        child: Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              OutlinedButton.icon(
                label: const Text(
                  'Workshops',
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
                        return const TechfestWorkshop();
                      },
                    ),
                  );
                },
              ),
              const Padding(padding: EdgeInsets.all(8.00)),
              OutlinedButton.icon(
                label: const Text(
                  'Tech Talks',
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
                        return const TechfestTechTalk();
                      },
                    ),
                  );
                },
              ),
              const Padding(padding: EdgeInsets.all(8.00)),
              OutlinedButton.icon(
                label: const Text(
                  'Presentations',
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
                        return const TechfestPresentation();
                      },
                    ),
                  );
                },
              ),
              const Padding(padding: EdgeInsets.all(8.00)),
              OutlinedButton.icon(
                label: const Text(
                  'Tech Events',
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
                        return const TechfestTechEvents();
                      },
                    ),
                  );
                },
              ),
              const Padding(padding: EdgeInsets.all(8.00)),
              OutlinedButton.icon(
                label: const Text(
                  'Games',
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
                        return const TechfestGames();
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
