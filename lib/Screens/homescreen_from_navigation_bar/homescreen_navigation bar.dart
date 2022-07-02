import 'package:flutter/material.dart';
import 'package:myapp/Screens/Home_Screen/widget/bottom_navigation.dart';
import 'package:myapp/Screens/home_page_programe/home_page_programe.dart';
import 'package:myapp/Screens/homescreen_from_navigation_bar/academics.dart';
import 'package:myapp/Screens/homescreen_from_navigation_bar/programs.dart';
import 'package:myapp/Screens/profile/logout.dart';

class homeScreenNavigatorBar extends StatelessWidget {
  const homeScreenNavigatorBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AcTeo Home Page',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {
                Logout.yesCancelDialog(context, 'Logout', 'Are you sure ?');
              },
              icon: const Icon(Icons.exit_to_app))
        ],

        // icon: const Icon(
        //   Icons.logout,
        //   color: Colors.black,
        //   size: 40,
        // ),
        // onPressed: () {
        //final action =
//                    Logout.yesCancelDialog(context, 'Logout', 'Are you sure ?');
        //}
      ),

//    return Scaffold(
      // body: ListView(
      //   children: [
      //     Card(
      //       clipBehavior: Clip.antiAlias,
      //       child: Column(
      //     children: [
      //       ListTile(
      //         //       leading: Icon(Icons.arrow_drop_down_circle),
      //         title: const Text('Academics',
      //             style: TextStyle(color: Colors.black)),
      //         // subtitle: Text(
      //         //   'Secondary Text',
      //         //   style: TextStyle(color: Colors.black.withOpacity(0.6)),
      //         // ),
      //       ),
      //       // Padding(
      //       //   padding: const EdgeInsets.all(16.0),
      //       //   child: Text(
      //       //     'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
      //       //     style: TextStyle(color: Colors.black.withOpacity(0.6)),
      //       //   ),
      //       // ),
      //       // ButtonBar(
      //       //   alignment: MainAxisAlignment.start,
      //       //   children: [
      //       //     FlatButton(
      //       //       textColor: const Color(0xFF6200EE),
      //       //       onPressed: () {
      //       //         // Perform some action
      //       //       },
      //       //       child: const Text('ACTION 1'),
      //       //     ),
      //       //     FlatButton(
      //       //       textColor: const Color(0xFF6200EE),
      //       //       onPressed: () {
      //       //         // Perform some action
      //       //       },
      //       //       child: const Text('ACTION 2'),
      //       //     ),
      //       //   ],
      //       // ),
      //       Image.asset('assets/images/academicsCollage.jpeg'),
      //       Image.asset('assets/images/programsCollage.jpeg'),
      //     ],
      //   ),
      // ),

      body: GridView.count(
        crossAxisCount: 1,
        children: [
          InkWell(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const AcademicsFromHomeScreenNavigation(),
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
                  children: [
                    Image.asset(
                      'assets/images/academicsCollage.jpeg',
                      height: 290,
                      width: 390,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(18),
                      child: Text(
                        'Academics',
                        style: TextStyle(
                            fontSize: 40,
                            color: Color.fromARGB(255, 243, 86, 107),
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
                      builder: (context) =>
                          const ProgramFromHomeScreenNavigation()));
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
                      'assets/images/programsCollage.jpeg',
                      height: 290,
                      width: 390,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(18),
                      child: Text(
                        'Programs',
                        style: TextStyle(
                            fontSize: 40,
                            color: Color.fromARGB(255, 62, 178, 178),
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
     
    







     /*THIS CODE IS FOR THE LIST VIEW TO DIPLAY ACADEMICS AND PROGRAM OPTIONS ALONG WITH THE NAVIGATION TO THE NEXT PAGES RESPECTIVELY
     ... MIGHT AS WELL UNDERSTAND THIS CODE */
     
//       body: SafeArea(
//         child: Expanded(
//             child: ListView(
//           padding: const EdgeInsets.all(40),
//           scrollDirection: Axis.vertical,
//           children: <Widget>[
//             OutlinedButton.icon(
//               label: const Text(
//                 'Academics',
//                 style: TextStyle(
//                     fontSize: 35,
//                     fontWeight: FontWeight.bold,
//                     color: Color.fromARGB(255, 135, 231, 184)),
//               ),
//               icon: const Icon(
//                 Icons.book,
//                 color: Colors.black,
//                 size: 100,
//               ),
//               onPressed: () {
//                 Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
//                   return const AcademicsFromHomeScreenNavigation();
//                 }));
//               },
//             ),

//             //(onPressed: null, child: Text("Username")),
//             const Padding(padding: EdgeInsets.all(50.00)),

//             OutlinedButton.icon(
//               label: const Text(
//                 'Programs',
//                 style: TextStyle(
//                     fontSize: 35,
//                     fontWeight: FontWeight.bold,
//                     color: Color.fromARGB(255, 135, 231, 184)),
//               ),
//               icon: const Icon(
//                 Icons.music_note_rounded,
//                 color: Colors.black,
//                 size: 100,
//               ),
//               onPressed: () {
//                 Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
//                   return const ProgramFromHomeScreenNavigation(
//                       name: 'click here to return');
//                 }));
//               },
//             ),
//           ],
//         )),
//       ),
//     );
//   }
// }
              // body: Column(
      //   children: [
      //     Text('the home page from the navigation bar'),
      //     ElevatedButton(
      //         onPressed: () {
      //           Navigator.of(context).push(
      //             MaterialPageRoute(
      //               builder: (ctx) {
      //                 return HomePageProgrameSection();
      //               },
      //             ),
      //           );
      //         },
      //         child: Text('Go to programe page'))
      //   ],
      // ),

    //  Center(child: Text('Homescreen from the navigation bar'));
    // return Scaffold(
    //   body: SafeArea(
    //     child: Text('profile page from the navigation bar'),
    //   ),
    // );
