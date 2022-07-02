import 'package:flutter/material.dart';
import 'package:myapp/Screens/home_page_programe/games/cricket/Cricket%20Floodlight/Cricket%20Floodlight%20Man%20of%20the%20Match/cricket_floodlight_man_of_the_match.dart';
import 'package:myapp/Screens/home_page_programe/games/cricket/Cricket%20Floodlight/Cricket%20Floodlight%20Matches/cricket_floodlight_matches.dart';
import 'package:myapp/Screens/home_page_programe/games/cricket/Cricket%20Floodlight/Cricket%20Floodlight%20Media/cricket_floodlight_media.dart';
import 'package:myapp/Screens/home_page_programe/games/cricket/Cricket%20Floodlight/Cricket%20Floodlight%20Posters/cricket_floodlight_posters.dart';
import 'package:myapp/Screens/home_page_programe/games/cricket/Cricket%20Floodlight/Cricket%20Floodlight%20Result/cricket_floodlight_result.dart';
import 'package:myapp/Screens/home_page_programe/games/cricket/Cricket%20Floodlight/Cricket%20Floodlight%20Score%20Points/cricket_floodlight_score_points.dart';
import 'package:myapp/Screens/home_page_programe/games/cricket/Cricket%20Floodlight/Cricket%20Floodlight%20Teams/cricket_floodlight_teams.dart';

/*The path for this page is :
homeNavigationBar --> programs */

class GamesCricketFloodlight extends StatelessWidget {
  const GamesCricketFloodlight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Floodlight',
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
                        return const CricketFloodlightMatches();
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
                        return const CricketFloodlightTeams();
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
                        return const CricketFloodlightResult();
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
                        return const CricketFloodlightScorePoints();
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
                        return const CricketFloodlightManOfTheMatch();
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
                      return const CricketFloodlightPoster();
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
                        return const CricketFloodlightMedia();
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
