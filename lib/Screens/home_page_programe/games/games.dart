import 'package:flutter/material.dart';
import 'package:myapp/Screens/home_page_programe/games/badminton/badminton.dart';
import 'package:myapp/Screens/home_page_programe/games/cricket/cricket.dart';
import 'package:myapp/Screens/home_page_programe/games/football/football.dart';

/*The path for this page is :
homeNavigationBar --> programs */

class Games extends StatelessWidget {
  const Games({Key? key}) : super(key: key);

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
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          InkWell(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GamesFootball()),
              );
            }),
            // ignore: avoid_unnecessary_containers
            child: Container(
              //margin: EdgeInsets.all(10),
              child: Card(
                elevation: 10,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/football.jpeg',
                        height: 150,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'Football',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 127, 95, 198),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          InkWell(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GamesCricket()),
              );
            }),
            // ignore: avoid_unnecessary_containers
            child: Container(
              //margin: EdgeInsets.all(10),
              child: Card(
                elevation: 10,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/cricket.jpg',
                        height: 150,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'Cricket',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(147, 5, 101, 24),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          InkWell(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GamesBadminton()),
              );
            }),
            // ignore: avoid_unnecessary_containers
            child: Container(
              //margin: EdgeInsets.all(10),
              child: Card(
                elevation: 10,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/badminton.jpg',
                        height: 150,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'Badminton',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 178, 27, 183),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
