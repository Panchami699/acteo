import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:myapp/db/brototype_database_helper.dart';
import 'package:myapp/db/database_Helper.dart';
//import 'package:myapp/db/models/arts_score.dart';
//import 'package:myapp/db/models/brototype_arts_score.dart';
//import 'package:http/http.dart';

import '../../../../loginScreen/loginPage.dart';
//import 'package:myapp/Screens/home_page_academics/exam_seating_arrangements/semester_exam.dart';
//import 'package:myapp/Screens/home_page_academics/exam_seating_arrangements/series_exam.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/brototype%20admin/details.dart';
import 'package:myapp/db/brototype_database_helper.dart';
import 'package:myapp/db/models/brototype_arts_score.dart';
//import 'package:myapp/brototype admin/list.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Score/arts_team_score.dart';

class ArtsScore extends StatelessWidget {
  const ArtsScore({
    Key? key,
    required this.future,
  }) : super(key: key);
  final Future<List<StudentModel>> future;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<StudentModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (ctx, index) {
              final tmscore = snapshot.data![index];
              return _buildListDetail(tmscore, ctx);
            },
          ),
        );
      },
    );
  }

  Widget _buildListDetail(StudentModel tmscore, BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
              alignment: Alignment.center,
              child: Text(
                tmscore.id.toString(),
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(width: 20.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tmscore.name,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    tmscore.score,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 4.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}






// class ArtsScore extends StatefulWidget {
//   ArtsScore({Key? key}) : super(key: key);

//   final _nameController = TextEditingController();
//   final _scoreController = TextEditingController();

//   @override
//   State<ArtsScore> createState() => _ArtsScoreState();
// }

// class _ArtsScoreState extends State<ArtsScore> {
//   //late List<arts_score> arts;
//   //bool isLoading = false;
//   // void List_function() async {
//   //   print("inside list function ");
//   //   data = await DatabaseHelper.instance.readAllScore();
//   //   // this.setState(() {});
//   //   // print(resp1.body);
//   //   print("data in each table");
//   //   print("This is the lenght" + data.length.toString());
//   // }

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   getAllScore();
//   // }

//   // @override
//   // void dispose() {
//   //   super.dispose();
//   // }

//   // Future<Void> () async {

//   //   // setState(() => isLoading = true);
//   //   // //this.arts = await DatabaseHelper.instance.readAllScore();
//   //   // setState(() => isLoading = false);
//   // }

//   @override
//   Widget build(BuildContext context) {
//     //getAllScore();
//     // List_function();
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             'Score',
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//           backgroundColor: Colors.black,
//         ),
//         body: ValueListenableBuilder(
//             valueListenable: studentListNotifier,
//             builder: (BuildContext ctx, List<StudentModel> studentList,
//                 Widget? child) {
//               return ListView.separated(
//                 itemBuilder: (ctx, index) {
//                   final data = studentList[index];
//                   return ListTile(
//                     title: Text(data.name),
//                     subtitle: Text(data.score),
//                     // trailing: IconButton(
//                     //   icon: Icon(Icons.delete),
//                     //   onPressed: (() {}),
//                     // ),
//                   );
//                 },
//                 separatorBuilder: (ctx, index) {
//                   return const Divider();
//                 },
//                 itemCount: studentList.length,
//               );
//             }));

//     // body: Center(
//     //   child: Container(
//     //         child: ListView.builder(
//     //           // itemCount: data == null ? 0 : data.length,
//     //           // itemCount: 2,
//     //           itemBuilder: (context, index) {
//     //             return Padding(
//     //               padding: EdgeInsets.fromLTRB(20, 05, 10, 5),
//     //               child: Card(
//     //                 elevation: 2.0,
//     //                 shape: RoundedRectangleBorder(
//     //                     borderRadius: BorderRadius.circular(16.0)),
//     //                 child: InkWell(
//     //                   onTap: () {
//     //                     AddButtonPressed();
//     //                     //  tap funtion here
//     //                     //List_function();
//     //                   },
//     //                   //             child: Column(
//     //                   //               children: <Widget>[
//     //                   //                 Padding(
//     //                   //                   padding: EdgeInsets.all(16.0),
//     //                   //                   child: Column(
//     //                   //                     mainAxisAlignment: MainAxisAlignment.center,
//     //                   //                     crossAxisAlignment: CrossAxisAlignment.center,
//     //                   //                     children: <Widget>[
//     //                   //                       Text(
//     //                   //                         "teamname:" + " ",
//     //                   //                         data[index]['teamname'].toUpperCase(),
//     //                   //                         style: Theme.of(context).textTheme.titleMedium,
//     //                   //                       ),
//     //                   //                       SizedBox(height: 6.0),

//     //                   //                       Text(('score:').toUpperCase() + " ",
//     //                   //                           data[index]['score'].toUpperCase(),
//     //                   //                           style:
//     //                   //                               Theme.of(context).textTheme.titleMedium),
//     //                   //                       SizedBox(height: 6.0),

//     //                   //                       // new SizedBox(height: 6.0),

//     //                   //                       // new SizedBox(height: 8.0),
//     //                   //                     ],
//     //                   //                   ),
//     //                   //                 )
//     //                   //               ],
//     //                   //             ),
//     //                   //           ),
//     //                   //         ),
//     //                   //       );
//     //                   //     },
//     //                   //   ),
//     //                   // ),
//     //                 ),
//     //               ),
//     //             );
//     //           },
//     //         ),
//     //       ),
//     //     ),
//     //   );
//     // }

//     // Future<void> AddButtonPressed() async {
//     //   getAllScore();
//     //   //print('$_name $_score');
//   }
// }
