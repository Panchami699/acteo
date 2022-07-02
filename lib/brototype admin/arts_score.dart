import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/brototype%20admin/details.dart';
import 'package:myapp/brototype%20admin/list.dart';
import 'package:myapp/db/brototype_database_helper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:myapp/db/models/arts_score.dart';
import 'package:myapp/db/models/brototype_arts_score.dart';

class AdminArtsScoreFromUtube extends StatefulWidget {
  const AdminArtsScoreFromUtube({Key? key}) : super(key: key);

  @override
  State<AdminArtsScoreFromUtube> createState() =>
      _AdminArtsScoreFromUtubeState();
}

class _AdminArtsScoreFromUtubeState extends State<AdminArtsScoreFromUtube> {
  final DatabaseService _databaseService = DatabaseService();

  Future<List<StudentModel>> _getscore() async {
    return await _databaseService.teamscore();
  }

  Future<void> _deleteScore(StudentModel value) async {
    await _databaseService.deleteScore(value.id!);
    setState(() {});
  }

//   @override
//   Widget build(BuildContext context) {
//     // getAllScore();
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Team Score',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Colors.black,
//       ),
//       body: SafeArea(
//         // child :SizedBox(
//         child: Column(
//           children: [
//             //const Expanded(child: ListDetailsWidget()),
//             ListDetailsWidget(
//               future: _getscore(),
//               onEdit: (values) {
//                 {
//                   Navigator.of(context)
//                       .push(
//                         MaterialPageRoute(
//                           builder: (_) => AddDetailsWidget(),
//                           fullscreenDialog: true,
//                         ),
//                       )
//                       .then((_) => setState(() {}));
//                 }
//               },
//               onDelete: _deleteScore,
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
//                     builder: (_) => AddDetailsWidget(),
//                     fullscreenDialog: true,
//                   ),
//                 )
//                 .then((_) => setState(() {}));
//           },
//           heroTag: 'add score',
//           child: FaIcon(FontAwesomeIcons.plus),
//         ),
//       ]),
//     );
//   }
// }

// USED USING THE BROTOTYPE

// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:myapp/brototype%20admin/details.dart';
// import 'package:myapp/brototype%20admin/list.dart';
// import 'package:myapp/db/brototype_database_helper.dart';

// class AdminArtsScoreFromUtube extends StatelessWidget {
//   const AdminArtsScoreFromUtube({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // getAllScore();
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('teamscore'),
          backgroundColor: Colors.black,
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       Navigator.of(context)
        //           .push(
        //             MaterialPageRoute(
        //               builder: (_) => AddDetailsWidget(),
        //               fullscreenDialog: true,
        //             ),
        //           )
        //           .then((_) => setState(() {}));
        //     },
        //     icon: Icon(Icons.add),
        //     //titl: Text('Add team score'),
        //   ),
        //   // centerTitle: true,
        // ],
        //   bottom: TabBar(
        //     tabs: [
        //       Padding(
        //         padding: const EdgeInsets.symmetric(vertical: 16.0),
        //         child: Text(''),
        //       )
        //     ],
        //   ),
        // ),
        body: ListDetailsWidget(
          future: _getscore(),
          onEdit: (value) {
            {
              Navigator.of(context)
                  .push(
                    MaterialPageRoute(
                      builder: (_) => AddDetailsWidget(tmscore: value),
                      fullscreenDialog: true,
                    ),
                  )
                  .then((_) => setState(() {}));
            }
          },
          onDelete: _deleteScore,
        ),
        // TabBarView(
        //   children: [
        // Scaffold(
        //   appBar: AppBar(
        //     title: const Text(
        //       'Team Score',
        //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //     ),
        //     backgroundColor: Colors.black,
        //     actions: [
        //       IconButton(
        //         onPressed: () {
        //           Navigator.of(context)
        //               .push(
        //                 MaterialPageRoute(
        //                   builder: (_) => AddDetailsWidget(),
        //                   fullscreenDialog: true,
        //                 ),
        //               )
        //               .then((_) => setState(() {}));
        //         },
        //         icon: Icon(Icons.add),
        //         //titl: Text('Add team score'),
        //       )
        //     ],
        //   ),
        //   // (context);
        //   // ignore: prefer_typing_uninitialized_variables
        //   body: SafeArea(
        // child: Column(
        //   children: [
        //const AddDetailsWidget(),
        // Expanded(
        // child: ListDetailsWidget(
        //   future: _getscore(),
        //   onEdit: (value) {
        //     {
        //       Navigator.of(context)
        //           .push(
        //             MaterialPageRoute(
        //               builder: (_) => AddDetailsWidget(tmscore: value),
        //               fullscreenDialog: true,
        //             ),
        //           )
        //           .then((_) => setState(() {}));
        //     }
        //   },
        //   onDelete: _deleteScore,
        // ),
        // BreedBuilder(
        //   future: _getBreeds(),
        // ),
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
                        builder: (_) => AddDetailsWidget(),
                        fullscreenDialog: true,
                      ),
                    )
                    .then((_) => setState(() {}));
              },
              heroTag: 'add team score',
              child: Icon(Icons.add),
              //label: Text('Add team score'),
              // child: FaIcon(FontAwesomeIcons.plus),
            ),
          ],
        ),
      ),
    );
    //],
    //);
  }
// floatingActionButton :
// FloatingActionButtonLocation.centerFloat

  //       floatingActionButton:
  //            //Column(mainAxisAlignment: MainAxisAlignment.end, children: [
  //         FloatingActionButton.extended(
  //            backgroundColor: const Color(0xff03dac6),
  // foregroundColor: Colors.black,onPressed: () {
  //             Navigator.of(context)
  //                 .push(
  //                   MaterialPageRoute(
  //                     builder: (_) => AddDetailsWidget(),
  //                     fullscreenDialog: true,
  //                   ),
  //                 )
  //                 .then((_) => setState(() {}));
  //           },
  //           heroTag: 'add team score',
  //           icon: Icon(Icons.add),
  // label: Text('Add team score'),
  //          // child: FaIcon(FontAwesomeIcons.plus),
  //     ),
  // );
}
// }















// FROM THE DEMO APP 

// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:myapp/brototype%20admin/details.dart';
// import 'package:myapp/brototype%20admin/list.dart';
// import 'package:myapp/db/brototype_database_helper.dart';
// //import 'package:demo/dbhelper.dart';
// //import 'package:demo/models/breed.dart';
// import 'package:flutter/material.dart';
// // import 'package:flutter_sqflite_example/models/breed.dart';
// // import 'package:flutter_sqflite_example/services/database_service.dart';

// class AdminArtsScoreFromUtube extends StatefulWidget {
//   const AdminArtsScoreFromUtube({Key? key}) : super(key: key);

//   @override
//   _AdminArtsScoreFromUtube createState() => _AdminArtsScoreFromUtube();
// }

// class _AdminArtsScoreFromUtube extends State<AdminArtsScoreFromUtube> {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _descController = TextEditingController();

//   final DatabaseService _databaseService = DatabaseService();

//   Future<void> _onSave() async {
//     final name = _nameController.text;
//     final description = _descController.text;

//     await _databaseService
//         .insertBreed(Breed(name: name, description: description));

//     Navigator.pop(context);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Add a new breed'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextField(
//               controller: _nameController,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: 'Enter name of the breed here',
//               ),
//             ),
//             SizedBox(height: 16.0),
//             TextField(
//               controller: _descController,
//               maxLines: 7,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: 'Enter description about the breed here',
//               ),
//             ),
//             SizedBox(height: 16.0),
//             SizedBox(
//               height: 45.0,
//               child: ElevatedButton(
//                 onPressed: _onSave,
//                 child: Text(
//                   'Save the Breed',
//                   style: TextStyle(
//                     fontSize: 16.0,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
