// import 'package:flutter/material.dart';
// import 'package:myapp/Screens/Admin/academics/webinars/tab_add_details.dart';
// import 'package:myapp/Screens/Admin/academics/webinars/tab_view_details.dart';
// import 'package:myapp/Screens/test_here/tabNoOne.dart';
// import 'package:myapp/Screens/test_here/tabNoTwo.dart';
// import 'package:myapp/db/brototype_database_helper.dart';
// import 'package:myapp/db/models/webinars.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:myapp/brototype%20admin/details.dart';
// import 'package:myapp/brototype%20admin/list.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:myapp/db/models/brototype_arts_score.dart';

// class AdminWebinarsCard extends StatefulWidget {
//   const AdminWebinarsCard({Key? key}) : super(key: key);

//   @override
//   State<AdminWebinarsCard> createState() => _AdminWebinarsCard();
// }

// class _AdminWebinarsCard extends State<AdminWebinarsCard> {
//   final DatabaseService _databaseService = DatabaseService();

//   Future<List<WebinarsDetailsModel>> _getWebinarDetails() async {
//     return await _databaseService.webinarsdetailtable();
//   }

//   Future<void> _deleteWebinarDetails(StudentModel value) async {
//     await _databaseService.deleteWebinarDetails(value.id!);
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Webinar',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Colors.black,
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             //const Expanded(child: ListDetailsWidget()),
//             ListDetailsWidget(
//               future: _getWebinarDetails(),
//               onEdit: (values) {
//                 {
//                   Navigator.of(context)
//                       .push(
//                         MaterialPageRoute(
//                           builder: (_) => AdminWebinarsAddDetails(),
//                           fullscreenDialog: true,
//                         ),
//                       )
//                       .then((_) => setState(() {}));
//                 }
//               },
//               onDelete: _deleteWebinarDetails,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton:
//           Column(mainAxisAlignment: MainAxisAlignment.end, children: [
//         FloatingActionButton(
//           onPressed: () {
//             Navigator.of(context)
//                 .push(
//                   MaterialPageRoute(
//                     builder: (_) => AdminWebinarsAddDetails(),
//                     fullscreenDialog: true,
//                   ),
//                 )
//                 .then((_) => setState(() {}));
//           },
//           heroTag: 'add webinar details',
//           child: FaIcon(FontAwesomeIcons.plus),
//         ),
//       ]),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:myapp/Screens/Admin/academics/webinars/tab_add_details.dart';
import 'package:myapp/Screens/Admin/academics/webinars/tab_view_details.dart';
// import 'package:myapp/Screens/test_here/tabNoOne.dart';
// import 'package:myapp/Screens/test_here/tabNoTwo.dart';
import 'package:myapp/db/brototype_database_helper.dart';
import 'package:myapp/db/models/webinars.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:myapp/brototype%20admin/details.dart';
// import 'package:myapp/brototype%20admin/list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:myapp/db/models/brototype_arts_score.dart';

class AdminWebinarsCard extends StatefulWidget {
  const AdminWebinarsCard({Key? key}) : super(key: key);

  @override
  State<AdminWebinarsCard> createState() => _AdminWebinarsCard();
}

class _AdminWebinarsCard extends State<AdminWebinarsCard> {
  final DatabaseService _databaseService = DatabaseService();

  Future<List<WebinarsDetailsModel>> _getWebinarDetails() async {
    return await _databaseService.webinarsdetailtable();
  }

  Future<void> _deleteWebinarDetail(WebinarsDetailsModel value) async {
    await _databaseService.deleteScore(value.id!);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Webinars'),
          backgroundColor: Colors.black,
        ),
        body: ListDetailsWebinar(
          future: _getWebinarDetails(),
          onEdit: (value) {
            {
              Navigator.of(context)
                  .push(
                    MaterialPageRoute(
                      builder: (_) => AdminWebinarsAddDetails(wbDetail: value),
                      fullscreenDialog: true,
                    ),
                  )
                  .then((_) => setState(() {}));
            }
          },
          onDelete: _deleteWebinarDetail,
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 5, 78, 108),
              foregroundColor: Color.fromARGB(255, 255, 255, 255),
              onPressed: () {
                Navigator.of(context)
                    .push(
                      MaterialPageRoute(
                        builder: (_) => AdminWebinarsAddDetails(),
                        fullscreenDialog: true,
                      ),
                    )
                    .then((_) => setState(() {}));
              },
              heroTag: 'add team score',
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  } // centerTitle: true,
  // bottom: TabBar(
  //   tabs: [
  //     Padding(
  //       padding: const EdgeInsets.symmetric(vertical: 16.0),
  //       child: Text('Register'),
  //               ),
  //     Padding(
  //       padding: const EdgeInsets.symmetric(vertical: 16.0),
  //       child: Text('View'),
  //     ),
  //    ],
// //    );
}

























        
        
        
        
        





// // import 'package:flutter/material.dart';
// // import 'package:flutter/src/foundation/key.dart';
// // import 'package:flutter/src/widgets/framework.dart';
// // import 'package:myapp/brototype%20admin/details.dart';
// // import 'package:myapp/brototype%20admin/list.dart';
// // import 'package:myapp/db/brototype_database_helper.dart';

// // class AdminArtsScoreFromUtube extends StatelessWidget {
// //   const AdminArtsScoreFromUtube({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     // getAllScore();
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text(
// //           'Team Score',
// //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// //         ),
// //         backgroundColor: Colors.black,
// //       ),
// //       body: SafeArea(
// //         child: Column(
// //           children: [
// //             AddDetailsWidget(),
// //             const Expanded(child: ListDetailsWidget()),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
