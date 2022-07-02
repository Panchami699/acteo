import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/brototype%20admin/details.dart';
import 'package:myapp/db/brototype_database_helper.dart';
import 'package:myapp/db/models/brototype_arts_score.dart';
import 'package:myapp/brototype admin/list.dart';

class ListDetailsWidget extends StatelessWidget {
  const ListDetailsWidget({
    Key? key,
    required this.future,
    required this.onEdit,
    required this.onDelete,
  }) : super(key: key);
  final Future<List<StudentModel>> future;
  final Function(StudentModel) onEdit;
  final Function(StudentModel) onDelete;

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
              //  }, separatorBuilder: (BuildContext context, int index) {  },
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
              child: //FaIcon(FontAwesomeIcons.dog, size: 18.0),
                  Text(
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
            SizedBox(width: 20.0),
            GestureDetector(
              onTap: () => onEdit(tmscore),
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
              onTap: () => onDelete(tmscore),
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

            
            
            
            
//             SafeArea(
//                 child: ListView.separated(
//                     ListView.builder(
//                     itemCount: snapshot.data!.length,
//                     itemBuilder: (ctx, index) {
//                       final tmscore = snapshot.data![index];
//                       return _buildListDetail(tmscore, ctx);
//                       //  }, separatorBuilder: (BuildContext context, int index) {  },
//                     }));
//           }
//         });
//   }

//   Widget _buildListDetail(StudentModel tmscore, BuildContext context) {
//     return ListTile(
//         title: Text(tmscore.name),
//         subtitle: Text(tmscore.score),
//         trailing: IconButton(icon: Icon(Icons.delete), onPressed: (() {})));
//   }
// } 
    
    
    
//     Card(
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Row(
//           children: [
//             Container(
//               height: 400.0,
//               width: 70.0,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.grey[300],
//               ),
//               alignment: Alignment.center,
//               child: Row(
//                 //children: [
//                 //Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     tmscore.name,
//                     style: TextStyle(
//                       fontSize: 16.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(width: 4.0),
//                   Text(
//                     tmscore.score,
//                     style: TextStyle(
//                       fontSize: 16.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   // SizedBox(height: 4.0)
//                   SizedBox(width: 20.0),
//                   GestureDetector(
//                     onTap: () => onEdit(tmscore),
//                     child: Container(
//                       height: 400.0,
//                       width: 100.0,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Colors.grey[200],
//                       ),
//                       alignment: Alignment.center,
//                       child: Icon(Icons.edit, color: Colors.orange[800]),
//                     ),
//                   ),
//                   SizedBox(width: 20.0),
//                   GestureDetector(
//                     onTap: () => onDelete(tmscore),
//                     child: Container(
//                       height: 400.0,
//                       width: 100.0,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Colors.grey[200],
//                       ),
//                       alignment: Alignment.center,
//                       child: Icon(Icons.delete, color: Colors.red[800]),
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//     //),
//     //);
//   }
// }

           
           



//            //MORE LIKELY THE USELESS CODE
// //             Expanded(
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Text(
// //                     tmscore.name,
// //                     style: TextStyle(
// //                       fontSize: 18.0,
// //                       fontWeight: FontWeight.w500,
// //                     ),
// //                   ),
// //                   SizedBox(height: 4.0),
// //                   Text(tmscore.score),
// //                 ],
// //               ),
// //             ),
// //             SizedBox(width: 20.0),
// //             GestureDetector(
// //               onTap: () => onEdit(tmscore),
// //               child: Container(
// //                 height: 40.0,
// //                 width: 40.0,
// //                 decoration: BoxDecoration(
// //                   shape: BoxShape.circle,
// //                   color: Colors.grey[200],
// //                 ),
// //                 alignment: Alignment.center,
// //                 child: Icon(Icons.edit, color: Colors.orange[800]),
// //               ),
// //             ),
// //             SizedBox(width: 20.0),
// //             GestureDetector(
// //               onTap: () => onDelete(tmscore),
// //               child: Container(
// //                 height: 40.0,
// //                 width: 40.0,
// //                 decoration: BoxDecoration(
// //                   shape: BoxShape.circle,
// //                   color: Colors.grey[200],
// //                 ),
// //                 alignment: Alignment.center,
// //                 child: Icon(Icons.delete, color: Colors.red[800]),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }




// //FROM THE BROTOTYPE 

// // import 'package:flutter/material.dart';
// // import 'package:flutter/src/foundation/key.dart';
// // import 'package:flutter/src/widgets/framework.dart';
// // import 'package:myapp/brototype%20admin/details.dart';
// // import 'package:myapp/db/brototype_database_helper.dart';
// // import 'package:myapp/db/models/brototype_arts_score.dart';

// // class ListDetailsWidget extends StatefulWidget {
// //   const ListDetailsWidget({Key? key}) : super(key: key);

// //   @override
// //   State<ListDetailsWidget> createState() => _ListDetailsWidgetState();
// // }

// // class _ListDetailsWidgetState extends State<ListDetailsWidget> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return ValueListenableBuilder(
// //         valueListenable: studentListNotifier,
// //         builder:
// //             (BuildContext ctx, List<StudentModel> studentList, Widget? child) {
// //           return ListView.separated(
// //             itemBuilder: (ctx, index) {
// //               final data = studentList[index];
// //               return ListTile(
// //                 //leading: Text,
// //                 title: Text(data.name),
// //                 subtitle: Text(data.score),
// //                 trailing: IconButton(
// //                   icon: Icon(Icons.delete),
// //                   onPressed: (() {
// //                     deleteScore(data.id!);
// //                   }),
// //                 ),
// //               );
// //             },
// //             separatorBuilder: (ctx, index) {
// //               return const Divider();
// //             },
// //             itemCount: studentList.length,
// //           );
// //         });
// //   }
// // }
