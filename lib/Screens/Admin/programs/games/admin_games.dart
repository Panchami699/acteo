import 'package:flutter/material.dart';
import 'package:myapp/Screens/home_page_programe/games/badminton/badminton.dart';
import 'package:myapp/Screens/home_page_programe/games/cricket/cricket.dart';
import 'package:myapp/Screens/home_page_programe/games/football/football.dart';

/*The path for this page is :
homeNavigationBar --> programs */

class AdminGames extends StatelessWidget {
  const AdminGames({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Games',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: GridView.count(
        //const Text('Display the time, stage of each events')
        crossAxisCount: 2,
        children: [
          InkWell(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GamesFootball(),
                ),
              );
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
                        'Football',
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
                  builder: (context) => const GamesCricket(),
                ),
              );
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
                        'Cricket',
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
                  builder: (context) => const GamesBadminton(),
                ),
              );
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
                        'Badminton',
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
