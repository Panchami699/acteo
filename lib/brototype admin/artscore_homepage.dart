// // import 'package:demo/dbhelper.dart';
// // import 'package:demo/models/breed.dart';
// // import 'package:demo/models/dog.dart';
// // import 'package:demo/screens/breed.dart';
// // import 'package:demo/screens/dog.dart';
// // import 'package:demo/widgets/breedbuilder.dart';
// //import 'package:demo/widgets/dogbuilder.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:myapp/brototype%20admin/details.dart';
// import 'package:myapp/brototype%20admin/list.dart';
// import 'package:myapp/db/brototype_database_helper.dart';
// import 'package:myapp/db/models/brototype_arts_score.dart';

// class AdminArtsScore extends StatefulWidget {
//   const AdminArtsScore({Key? key}) : super(key: key);

//   @override
//   _AdminArtsScore createState() => _AdminArtsScore();
// }

// class _AdminArtsScore extends State<AdminArtsScore> {
//   final DatabaseService _databaseService = DatabaseService();

//   Future<List<StudentModel>> _getScore() async {
//     return await _databaseService.teamscore();
//   }

//   Future<void> _DeleteScore(StudentModel tmscore) async {
//     await _databaseService.deleteScore(tmscore.id!);
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Admin Arts Score'),
//           centerTitle: true,
//           bottom: TabBar(
//             tabs: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 16.0),
//                 child: Text('Add details'),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 16.0),
//                 child: Text('View Details'),
//               ),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             ListDetailsWidget(
//               future: _getScore(),
//               onEdit: (value) {
//                 {
//                   Navigator.of(context)
//                       .push(
//                         MaterialPageRoute(
//                           builder: (_) => AddDetailsWidget(tmscore: value),
//                           fullscreenDialog: true,
//                         ),
//                       )
//                       .then((_) => setState(() {}));
//                 }
//               },
//               onDelete: _DeleteScore,
//             ),
//           ],
//         ),
//         floatingActionButton: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             FloatingActionButton(
//               onPressed: () {
//                 Navigator.of(context)
//                     .push(
//                       MaterialPageRoute(
//                         builder: (_) => AddDetailsWidget(),
//                         fullscreenDialog: true,
//                       ),
//                     )
//                     .then((_) => setState(() {}));
//               },
//               heroTag: 'addBreed',
//               child: FaIcon(FontAwesomeIcons.plus),
//             ),
//             // SizedBox(height: 12.0),
//             // FloatingActionButton(
//             //   onPressed: () {
//             //     Navigator.of(context)
//             //         .push(
//             //           MaterialPageRoute(
//             //             builder: (_) => DogFormPage(),
//             //             fullscreenDialog: true,
//             //           ),
//             //         )
//             //         .then((_) => setState(() {}));
//             //   },
//             //   heroTag: 'addDog',
//             //   child: FaIcon(FontAwesomeIcons.paw),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }
