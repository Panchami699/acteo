import 'package:flutter/material.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/arts_page.dart';
import 'package:myapp/Screens/home_page_programe/holiday celebrations/christmas.dart';
import 'package:myapp/Screens/home_page_programe/games/games.dart';
import 'package:myapp/Screens/home_page_programe/holiday%20celebrations/holiday_celebrations.dart';
import 'package:myapp/Screens/home_page_programe/onam/onam.dart';
import 'package:myapp/Screens/home_page_programe/techfest/techfest.dart';
import 'package:myapp/Screens/home_page_programe/union/union.dart';
import 'package:myapp/Screens/score.dart';

class ProgramFromHomeScreenNavigation extends StatelessWidget {
  //final String name;
  const ProgramFromHomeScreenNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Programs',
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ArtsPage()));
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
                        'assets/images/arts.jpeg',
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
                          'Arts',
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
                  MaterialPageRoute(builder: (context) => const scoreadd()));
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
                      'assets/images/techfest.jpeg',
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
                        'Techfest',
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
                  MaterialPageRoute(builder: (context) => const Games()));
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
                      'assets/images/games.jpeg',
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
                        'Games',
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
          InkWell(
            onTap: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HolidayCelebration()));
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
                      //         'assets/images/onam.jpeg',
                      'assets/images/holiday_celebrations.jpg',
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
                        'Holiday Celebrations',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 223, 100, 39),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // InkWell(
          //   onTap: (() {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => const Christmas()));
          //   }),
          //   // ignore: avoid_unnecessary_containers
          //   child: Container(
          //     //margin: EdgeInsets.all(10),
          //     child: Card(
          //       elevation: 10,
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Image.asset(
          //             'assets/images/christmas.jpeg',
          //             height: 150,
          //             width: 200,
          //             fit: BoxFit.cover,
          //           ),
          //           const SizedBox(
          //             height: 5,
          //           ),
          //           const Padding(
          //             padding: EdgeInsets.all(5),
          //             child: Text(
          //               'Christmas',
          //               style: TextStyle(
          //                 fontSize: 15,
          //                 fontWeight: FontWeight.bold,
          //                 color: Color.fromARGB(255, 54, 54, 137),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          InkWell(
            onTap: (() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Union()));
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
                      'assets/images/union.jpeg',
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
                        'Union Day',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 171, 6, 6),
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
                  MaterialPageRoute(builder: (context) => const Union()));
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
                      'assets/images/other_events.jpg',
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
                        'Other Events',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 214, 217, 50),
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
    /**This code is to obtain the gridview that is not navigated into another page */
    // child:
    // GridView.count(
    //     mainAxisSpacing: 10,
    //     crossAxisSpacing: 10,
    //     crossAxisCount: 2,
    //     children: [
    //       Container(
    //         child: Card(
    //             elevation: 10.0,
    //             child: Column(
    //               children: [
    //                 Image.asset('assets/images/onam.jpeg'),
    //                 SizedBox(
    //                   height: 5.0,
    //                 ),
    //                 Text(
    //                   'Onam',
    //                   style: TextStyle(
    //                       fontWeight: FontWeight.bold,
    //                       color: Color.fromARGB(255, 44, 100, 128)),
    //                 )
    //               ],
    //             )),
    //       ), ]


        //     child: Column(
        //   children: [
        //     ElevatedButton(
        //         onPressed: () {
        //           Navigator.of(context).pop();
        //         },
        //         child: Text(name))
        //   ],
        // )),
        
