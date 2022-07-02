// import 'dart:async';
// import 'dart:convert';
// import 'dart:io'; //from the link
// import 'package:flutter/cupertino.dart';
// import 'package:myapp/Screens/Admin/academics/workshops/utils_from_github.dart';
// import 'package:myapp/db/models/brototype_arts_score.dart';
// import 'package:myapp/db/models/webinars.dart';
// import 'package:myapp/db/models/workshop.dart';
// import 'package:myapp/saving%20photo/admin%20webinars/admin_webinars_photo.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
// import '../Screens/Admin/academics/webinars/admin_webinars_stackoverflow.dart';

// //ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);
// ValueNotifier<List<WebinarsDetailsModel>> WebinarDetailsNotifier =
//     ValueNotifier([]);

// late Database _db;

// Future<void> initializedDatabaseWebinars() async {
//   _db = await openDatabase(
//     'acteo.db',
//     version: 1,
//     onCreate: (Database db, int version) async {
//       // await db.execute(
//       //     'CREATE TABLE teamscore (id INTEGER PRIMARY KEY, name TEXT, score TEXT)');
//       await db.execute(
//           'CREATE TABLE webinarsdetailtable (id INTEGER PRIMARY KEY, eventName TEXT, orgName TEXT, Description TEXT)');
//     },
//   );
// }

// // Future<void> addScore(StudentModel value) async {
// //   await _db.rawInsert('INSERT INTO teamscore (name, score) VALUES (?,?)',
// //       [value.name, value.score]);
// //   getAllScore();
// //   // studentListNotifier.value.add(value);
// //   // studentListNotifier.notifyListeners();
// // }

// // Future<void> getAllScore() async {
// //   final _values = await _db.rawQuery('SELECT * FROM teamscore');
// //   print(_values);
// //   studentListNotifier.value.clear();

// //   _values.forEach((map) {
// //     final score = StudentModel.fromMap(map);
// //     studentListNotifier.value.add(score);
// //     studentListNotifier.notifyListeners();
// //   });
// // }

// // Future<void> deleteScore(int id) async {
// //   await _db.rawDelete('DELETE FROM teamscore WHERE id = ?', [id]);
// //   getAllScore();
// // }

// //the webinars db helper
// // Future<void> initializedDatabaseWebinars() async {
// //   _db = await openDatabase(
// //     'acteoWebinar.db',
// //     version: 1,
// //     onCreate: (Database dbwebinars, int version) async {

// //     },
// //   );
// // }

// Future<void> addWebinarDetails(WebinarsDetailsModel value) async {
//   await _db.rawInsert(
//       'INSERT INTO webinarsdetailtable (eventName, orgName, Description) VALUES (?, ?, ?)',
//       [value.eventName, value.orgName, value.Description]);
//   getWebinarDetails();
//   // studentListNotifier.value.add(value);
//   // studentListNotifier.notifyListeners();
// }

// Future<void> getWebinarDetails() async {
//   final _values = await _db.rawQuery('SELECT * FROM webinarsdetailtable');
//   print(_values);
//   WebinarDetailsNotifier.value.clear();

//   _values.forEach(
//     (map) {
//       final Description = WebinarsDetailsModel.fromMap(map);
//       WebinarDetailsNotifier.value.add(Description);
//       WebinarDetailsNotifier.notifyListeners();
//     },
//   );
// }

// Future<int> deleteWebinarDetails(int id) async {
//   // var count =
//   return await _db
//       .rawDelete('DELETE FROM webinarsdetailtable WHERE id = ?', [id]);
//   // assert(count == 1);
//   //getWebinarDetails();
//   // print('inside the delete');
//   // await _db.rawDelete('webinarsdetailtable, where id = ?', [id]);
// }
