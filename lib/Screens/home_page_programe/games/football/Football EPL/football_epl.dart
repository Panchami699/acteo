import 'package:flutter/material.dart';
import 'package:myapp/Screens/home_page_programe/games/football/Football%20EPL/Football%20EPL%20Man%20of%20the%20Match/football_epl_man_of_the_match.dart';
import 'package:myapp/Screens/home_page_programe/games/football/Football%20EPL/Football%20EPL%20Matches/football_epl_matches.dart';
import 'package:myapp/Screens/home_page_programe/games/football/Football%20EPL/Football%20EPL%20Media/football_epl_media.dart';
import 'package:myapp/Screens/home_page_programe/games/football/Football%20EPL/Football%20EPL%20Posters/football_epl_poster.dart';
import 'package:myapp/Screens/home_page_programe/games/football/Football%20EPL/Football%20EPL%20Results/football_epl_results.dart';
import 'package:myapp/Screens/home_page_programe/games/football/Football%20EPL/Football%20EPL%20Score%20Points/football_epl_score_points.dart';
import 'package:myapp/Screens/home_page_programe/games/football/Football%20EPL/Football%20EPL%20Teams/football_epl_teams.dart';
//import 'package:myapp/Screens/home_page_academics/exam_seating_arrangements/semester_exam.dart';
//import 'package:myapp/Screens/home_page_academics/exam_seating_arrangements/series_exam.dart';

class GamesFootballEpl extends StatelessWidget {
  const GamesFootballEpl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Teams',
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
                  'Matches',
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
                        return const FootballEplMatches();
                      },
                    ),
                  );
                },
              ),
              const Padding(padding: EdgeInsets.all(8.00)),
              OutlinedButton.icon(
                label: const Text(
                  'Teams',
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
                        return const FootballEplTeams();
                      },
                    ),
                  );
                },
              ),
              const Padding(padding: EdgeInsets.all(8.00)),
              OutlinedButton.icon(
                label: const Text(
                  'Result',
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
                        return const FootballEplResult();
                      },
                    ),
                  );
                },
              ),
              const Padding(padding: EdgeInsets.all(8.00)),
              OutlinedButton.icon(
                label: const Text(
                  'Score Points',
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
                        return const FootballEplScorePoints();
                      },
                    ),
                  );
                },
              ),
              const Padding(padding: EdgeInsets.all(8.00)),
              OutlinedButton.icon(
                label: const Text(
                  'Man of the Match',
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
                        return const FootballEplManOfTheMatch();
                      },
                    ),
                  );
                },
              ),
              const Padding(padding: EdgeInsets.all(8.00)),
              OutlinedButton.icon(
                label: const Text(
                  'Poster',
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
                      return const FootballEplPoster();
                    }),
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
                        return const FootballEplMedia();
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
