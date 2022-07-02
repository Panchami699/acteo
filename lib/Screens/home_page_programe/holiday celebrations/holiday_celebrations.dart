import 'package:flutter/material.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/arts_page.dart';
import 'package:myapp/Screens/home_page_programe/holiday celebrations/christmas.dart';
import 'package:myapp/Screens/home_page_programe/games/games.dart';
import 'package:myapp/Screens/home_page_programe/holiday%20celebrations/holi.dart';
import 'package:myapp/Screens/home_page_programe/onam/onam.dart';
import 'package:myapp/Screens/home_page_programe/techfest/techfest.dart';
import 'package:myapp/Screens/home_page_programe/union/union.dart';
import 'package:myapp/Screens/score.dart';

class HolidayCelebration extends StatelessWidget {
  //final String name;
  const HolidayCelebration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Holiday Celebrations',
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
                MaterialPageRoute(builder: (context) => const Onam()),
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
                        'assets/images/onam.jpeg',
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
                          'Onam',
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Christmas()));
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
                      'assets/images/christmas.jpeg',
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
                        'christmas',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 44, 100, 128),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Holi()));
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
                      'assets/images/holi.jpg',
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
                        'Holi',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 157, 185, 58),
                        ),
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
