// // // import 'package:flutter/foundation.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:flutter/src/foundation/key.dart';
// // // import 'package:flutter/src/widgets/framework.dart';
// // // import 'package:myapp/brototype%20admin/details.dart';
// // // import 'package:myapp/db/brototype_database_helper.dart';
// // // import 'package:myapp/db/models/brototype_arts_score.dart';
// // // //import 'package:myapp/db/models/webinars.dart';
// // // //import 'package:myapp/db/webianr_helper.dart';

// // // class ListDetailsWidget extends StatefulWidget {
// // //   const ListDetailsWidget({Key? key}) : super(key: key);

// // //   @override
// // //   State<ListDetailsWidget> createState() => _ListDetailsWidgetState();
// // // }

// // // class _ListDetailsWidgetState extends State<ListDetailsWidget> {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return ValueListenableBuilder(
// // //       valueListenable: we,
// // //       builder:
// // //           (BuildContext ctx, List<StudentModel> studentList, Widget? child) {
// // //         return ListView.separated(
// // //           itemBuilder: (ctx, index) {
// // //             final data = studentList[index];
// // //             return ListTile(
// // //               leading: Text(data.orgName),
// // //               title: Text(data.eventName),
// // //               subtitle: Text(data.description),
// // //               trailing: IconButton(
// // //                   icon: const Icon(Icons.delete),
// // //                   onPressed: () {
// // //                  //   deleteScore(data.id!);
// // //                   }),
// // //             );
// // //           },
// // //           separatorBuilder: (ctx, index) {
// // //             return const Divider();
// // //           },
// // //           itemCount: studentList.length,
// // //         );
// // //       },
// // //     );
// // //   }
// // // }

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/brototype%20admin/details.dart';
import 'package:myapp/db/brototype_database_helper.dart';
import 'package:myapp/db/models/brototype_arts_score.dart';
import 'package:myapp/db/models/webinars.dart';
import 'package:myapp/db/webianr_helper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/brototype admin/list.dart';

// class ListDetailsWidget extends StatefulWidget {
//   const ListDetailsWidget({Key? key}) : super(key: key);

//   @override
//   State<ListDetailsWidget> createState() => _ListDetailsWidgetState();
// }

// class _ListDetailsWidgetState extends State<ListDetailsWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return ValueListenableBuilder(
//       valueListenable: webinarDetailsNotifier,
//       builder: (BuildContext ctx, List<WebinarsDetailsModel> webinarDetails,
//           Widget? child) {
//         return ListView.separated(
//           itemBuilder: (ctx, index) {
//             final dataWebinar = webinarDetails[index];
//             return ListTile(
//               leading: Text(dataWebinar.orgName),
//               title: Text(dataWebinar.eventName),
//               subtitle: Text(dataWebinar.description),
//               trailing: IconButton(
//                   icon: const Icon(Icons.delete),
//                   onPressed: () {
//                     deleteWebinarDetails(dataWebinar.id!);
//                   }),
//             );
//           },
//           separatorBuilder: (ctx, index) {
//             return const Divider();
//           },
//           itemCount: webinarDetails.length,
//         );
//       },
//     );
//   }
// }

class ListDetailsWebinar extends StatelessWidget {
  const ListDetailsWebinar({
    Key? key,
    required this.future,
    required this.onEdit,
    required this.onDelete,
  }) : super(key: key);
  final Future<List<WebinarsDetailsModel>> future;
  final Function(WebinarsDetailsModel) onEdit;
  final Function(WebinarsDetailsModel) onDelete;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<WebinarsDetailsModel>>(
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
              final wbDetail = snapshot.data![index];
              return _buildListWebinarDetail(wbDetail, ctx);
            },
          ),
        );
      },
    );
  }

  Widget _buildListWebinarDetail(
      WebinarsDetailsModel wbDetail, BuildContext context) {
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
                color: Colors.grey[300],
              ),
              alignment: Alignment.center,
              child: Text(
                wbDetail.orgName,
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
                    wbDetail.eventName,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    wbDetail.description,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 4.0),
                ],
              ),
            ),
            SizedBox(width: 20.0),
            GestureDetector(
              onTap: () => onEdit(wbDetail),
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200],
                ),
                alignment: Alignment.center,
                child: Icon(Icons.edit, color: Colors.orange[800]),
              ),
            ),
            SizedBox(width: 20.0),
            GestureDetector(
              onTap: () => onDelete(wbDetail),
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200],
                ),
                alignment: Alignment.center,
                child: Icon(Icons.delete, color: Colors.red[800]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


            
            
            
            
            
            
            
           
            
            










// // // // import 'package:flutter/foundation.dart';
// // // // import 'package:flutter/material.dart';
// // // // import 'package:flutter/src/foundation/key.dart';
// // // // import 'package:flutter/src/widgets/framework.dart';
// // // // import 'package:myapp/brototype%20admin/details.dart';
// // // // import 'package:myapp/db/brototype_database_helper.dart';
// // // // import 'package:myapp/db/models/brototype_arts_score.dart';
// // // // //import 'package:myapp/db/models/webinars.dart';
// // // // //import 'package:myapp/db/webianr_helper.dart';

// // // // class ListDetailsWidget extends StatefulWidget {
// // // //   const ListDetailsWidget({Key? key}) : super(key: key);

// // // //   @override
// // // //   State<ListDetailsWidget> createState() => _ListDetailsWidgetState();
// // // // }

// // // // class _ListDetailsWidgetState extends State<ListDetailsWidget> {
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return ValueListenableBuilder(
// // // //       valueListenable: we,
// // // //       builder:
// // // //           (BuildContext ctx, List<StudentModel> studentList, Widget? child) {
// // // //         return ListView.separated(
// // // //           itemBuilder: (ctx, index) {
// // // //             final data = studentList[index];
// // // //             return ListTile(
// // // //               leading: Text(data.orgName),
// // // //               title: Text(data.eventName),
// // // //               subtitle: Text(data.description),
// // // //               trailing: IconButton(
// // // //                   icon: const Icon(Icons.delete),
// // // //                   onPressed: () {
// // // //                  //   deleteScore(data.id!);
// // // //                   }),
// // // //             );
// // // //           },
// // // //           separatorBuilder: (ctx, index) {
// // // //             return const Divider();
// // // //           },
// // // //           itemCount: studentList.length,
// // // //         );
// // // //       },
// // // //     );
// // // //   }
// // // // }

// // // import 'package:flutter/foundation.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:flutter/src/foundation/key.dart';
// // // import 'package:flutter/src/widgets/framework.dart';
// // // import 'package:myapp/brototype%20admin/details.dart';
// // // import 'package:myapp/db/brototype_database_helper.dart';
// // // import 'package:myapp/db/models/brototype_arts_score.dart';
// // // import 'package:myapp/db/models/webinars.dart';
// // // import 'package:myapp/db/webianr_helper.dart';

// // // class ListDetailsWidget extends StatefulWidget {
// // //   const ListDetailsWidget({Key? key}) : super(key: key);

// // //   @override
// // //   State<ListDetailsWidget> createState() => _ListDetailsWidgetState();
// // // }

// // // class _ListDetailsWidgetState extends State<ListDetailsWidget> {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return ValueListenableBuilder(
// // //       valueListenable: webinarDetailsNotifier,
// // //       builder: (BuildContext ctx, List<WebinarsDetailsModel> webinarDetails,
// // //           Widget? child) {
// // //         return ListView.separated(
// // //           itemBuilder: (ctx, index) {
// // //             final dataWebinar = webinarDetails[index];
// // //             return ListTile(
// // //               leading: Text(dataWebinar.orgName),
// // //               title: Text(dataWebinar.eventName),
// // //               subtitle: Text(dataWebinar.description),
// // //               trailing: IconButton(
// // //                   icon: const Icon(Icons.delete),
// // //                   onPressed: () {
// // //                     deleteWebinarDetails(dataWebinar.idWebinar!);
// // //                   }),
// // //             );
// // //           },
// // //           separatorBuilder: (ctx, index) {
// // //             return const Divider();
// // //           },
// // //           itemCount: webinarDetails.length,
// // //         );
// // //       },
// // //     );
// // //   }
// // // }





























































// // // import 'package:flutter/material.dart';
// // // import 'package:flutter/src/foundation/key.dart';
// // // import 'package:flutter/src/widgets/framework.dart';
// // // import 'package:myapp/brototype%20admin/details.dart';
// // // import 'package:myapp/db/brototype_database_helper.dart';
// // // import 'package:myapp/db/models/brototype_arts_score.dart';

// // // class ListDetailsWidget extends StatelessWidget {
// // //   const ListDetailsWidget({Key? key}) : super(key: key);

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return ValueListenableBuilder(
// // //         valueListenable: studentListNotifier,
// // //         builder:
// // //             (BuildContext ctx, List<StudentModel> studentList, Widget? child) {
// // //           return ListView.separated(
// // //             itemBuilder: (ctx, index) {
// // //               final data = studentList[index];
// // //               return ListTile(
// // //                 //leading: Text,
// // //                 title: Text(data.name),
// // //                 subtitle: Text(data.score),
// // //                 trailing: IconButton(
// // //                   icon: Icon(Icons.delete),
// // //                   onPressed: (() {
// // //                     deleteScore(data.id!);
// // //                   }),
// // //                 ),
// // //               );
// // //             },
// // //             separatorBuilder: (ctx, index) {
// // //               return const Divider();
// // //             },
// // //             itemCount: studentList.length,
// // //           );
// // //         });
// // //   }
// // // }



























// // //     //failes attempt 2
// // // //     ValueListenableBuilder(
// // // //         valueListenable: studentListNotifier,
// // // //         builder:
// // // //             (BuildContext ctx, List<StudentModel> studentList, Widget? child) 
// // // //             {itemBuilder:(ctx, index) {
// // // //             final data = studentList[index];
// // // //             //
// // // //             return Padding(
// // // //               padding: const EdgeInsets.all(8.0),
// // // //               child: Card(
// // // //                 child: Padding(
// // // //                   padding: const EdgeInsets.all(8.0),
// // // //                   child: Row(
// // // //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // //                     children: <Widget>[
// // // //                       Column(
// // // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // // //                         children: <Widget>[
// // // //                           Text(
// // // //                             'Name: ${widget.model.fruitName}',
// // // //                             style: TextStyle(fontSize: 15),
// // // //                           ),
// // // //                           Text(
// // // //                             'Quantity: ${widget.model.quantity}',
// // // //                             style: TextStyle(
// // // //                               fontSize: 15,
// // // //                             ),
// // // //                           ),
// // // //                         ],
// // // //                       ),
// // // //                       Row(
// // // //                         children: [
// // // //                           CircleAvatar(
// // // //                             backgroundColor: Colors.white,
// // // //                             child: IconButton(
// // // //                               onPressed: widget.onEditPress,
// // // //                               icon: Icon(
// // // //                                 Icons.edit,
// // // //                                 color: Colors.blueAccent,
// // // //                               ),
// // // //                             ),
// // // //                           ),
// // // //                           SizedBox(
// // // //                             width: 15,
// // // //                           ),
// // // //                           CircleAvatar(
// // // //                             backgroundColor: Colors.white,
// // // //                             child: IconButton(
// // // //                               onPressed: widget.onDeletePress,
// // // //                               icon: Icon(
// // // //                                 Icons.delete,
// // // //                                 color: Colors.red,
// // // //                               ),
// // // //                             ),
// // // //                           )
// // // //                         ],
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                 ),
// // // //               ),
// // // //             );
// // // //           };
// // // //         },);
// // // //   }
// // // // }

// // // // the failed attempt for the card

// // // //       Card(
// // // //             clipBehavior: Clip.antiAlias,
// // // //             child: Column(
// // // //               children: [
// // // //                 ListTile(
// // // //                   leading: Icon(Icons.arrow_drop_down_circle),
// // // //                   title:  Text(data.eventName),
// // // //                   subtitle: Text(
// // // //                     data.orgName,
// // // //                     style: TextStyle(color: Colors.black.withOpacity(0.6)),
// // // //                   ),
// // // //                 ) ,
// // // //                 Padding(
// // // //                   padding: const EdgeInsets.all(16.0),
// // // //                   child: Text(
// // // //                     'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
// // // //                     style: TextStyle(color: Colors.black.withOpacity(0.6)),
// // // //                   ),
// // // //                 ),
// // // //                  ButtonBar(
// // // //                   alignment: MainAxisAlignment.start,
// // // //                   children: [
// // // //                     FlatButton(
// // // //                       textColor: const Color(0xFF6200EE),
// // // //                       onPressed: () {
// // // //                         // Perform some action
// // // //                       },
// // // //                       child: const Text('ACTION 1'),
// // // //                     ),
// // // //                     FlatButton(
// // // //                       textColor: const Color(0xFF6200EE),
// // // //                       onPressed: () {
// // // // // Perform some action
// // // //                       },
// // // //                       child: const Text('ACTION 2'),
// // // //                     ),
// // // //                   ],
// // // //                 ),
// // // //               ],
// // // //             ),
// // // //           ),

// // // // ValueListenableBuilder(
// // // //     valueListenable: studentListNotifier,
// // // //     builder:
// // // // (BuildContext ctx, List<StudentModel> studentList, Widget? child) {
// // // // return ListView.separated(
// // // //   itemBuilder: (ctx, index) {
// // // //     final data = studentList[index];
// // // //     return ListTile(
// // // //       title: Text(data.name),
// // // //       subtitle: Text(data.score),
// // // //       trailing: IconButton(
// // // //         icon: Icon(Icons.delete),
// // // //         onPressed: (() {}),
// // // //       ),
// // // //     );
// // // //   },
// // // //   separatorBuilder: (ctx, index) {
// // // //     return const Divider();
// // // //   },
// // // //   itemCount: studentList.length,
// // // // );
