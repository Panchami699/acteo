// import 'dart:io';
// import 'dart:typed_data';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:myapp/db/brototype_database_helper.dart';

// class AdminWebinarStackOverflow extends StatefulWidget {
//   @override
//   State<AdminWebinarStackOverflow> createState() =>
//       _AdminWebinarStackOverflow();
// }

// class _AdminWebinarStackOverflow extends State<AdminWebinarStackOverflow> {
//   final ImagePicker imagePicker = ImagePicker();
//   List<XFile>? imageFileList = [];

//   void selectImages() async {
//     final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
//     if (selectedImages!.isNotEmpty) {
//       imageFileList!.addAll(selectedImages);
//     }
//     print("Image List Length:" + imageFileList!.length.toString());
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Multiple Images'),
//         ),
//         body: SafeArea(
//           child: Column(
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   selectImages();
//                 },
//                 child: Text('Select Images'),
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: GridView.builder(
//                       itemCount: imageFileList!.length,
//                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 3),
//                       itemBuilder: (BuildContext context, int index) {
//                         return Image.memory(picture.picture);
//                       }),
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }
// }

// // class AdminWebinarsPhoto {
// //   int id;
// //   String photoName;

// //   AdminWebinarsPhoto({this.id, this.photoName});

// class Picture {
//   late final int id;
//   late final String title;
//   late final Uint8List picture;

//   Picture(list, list, list, {required this.id, required this.title, required this.picture});

//   Picture.fromMap(Map map, this.id, this.title, this.picture) {
//     id = map[id];
//     title = map[title];
//     picture = map[picture];
//   }

//   Map<String, dynamic> toMap() => {
//         "id": id,
//         "title": title,
//         "picture": picture,
//       };
// }


// //   Map<String, dynamic> toMap() {
// //     var map = <String, dynamic>{
// //       'id': id,
// //       'photoName': photoName,
// //     };
// //     return map;
// //   }

// //   AdminWebinarsPhoto.fromMap(Map map) {
// //     id = map['id'];
// //     photoName = map['photoName'];
// //   }
// // }