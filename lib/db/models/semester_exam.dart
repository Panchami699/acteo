// import 'dart:convert';
// import 'package:flutter/services.dart';

// final String tablesemesterexam = 'Semester Exam';

// class semesterExamFields {
//   static final List<String> values = [id, name, cls, time, regNumb];

//   static final String id = '_id';
//   static final String name = 'name';
//   static final String cls = 'class';
//   static final String time = 'name';
//   static final String regNumb = 'class';
// }

// class SemesterExamDbModel {
//   final int? id;
//   final String name;
//   final String cls;
//   final String time;
//   final String regNumb;

//   const SemesterExamDbModel({
//     this.id,
//     required this.name,
//     required this.cls,
//     required this.time,
//     required this.regNumb,
//   });

//   SemesterExamDbModel copy({
//     int? id,
//     String? name,
//     String? cls,
//     String? time,
//     String? regNumb,
//   }) =>
//       SemesterExamDbModel(
//         id: id ?? this.id,
//         name: name ?? this.name,
//         cls: cls ?? this.cls,
//         time: time ?? this.time,
//         regNumb: regNumb ?? this.regNumb,
//       );

//   static SemesterExamDbModel fromJson(Map<String, Object?> json) =>
//       SemesterExamDbModel(

//           // id: json[artsFields.id] as int?,
//           name: json[semesterExamFields.name] as String,
//           cls: json[semesterExamFields.cls] as String,
//           time: json[semesterExamFields.time] as String,
//           regNumb: json[semesterExamFields.regNumb] as String);
//   Map<String, Object?> toJson() => {
//         semesterExamFields.id: id,
//         semesterExamFields.name: name,
//         semesterExamFields.cls: cls,
//         semesterExamFields.time: time,
//         semesterExamFields.regNumb: regNumb
//       };
// }
