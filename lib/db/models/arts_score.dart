import 'dart:convert';
import 'package:flutter/services.dart';

// class artsFields {
//   static final List<String> values = [id, team, score];

//   static final String id = '_id';
//   static final String team = 'team';
//   static final String score = 'score';
// }

class StudentModel {
  final int? id;
  final String name;
  final String score;

  StudentModel({
    this.id,
    required this.name,
    required this.score,
  });

  // Convert a Breed into a Map. The keys must correspond to the names of the
  // columns in the database.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'score': score,
    };
  }

  // static arts_score fromJson(Map<String, Object?> json) => arts_score(
  //       id: json[artsFields.id] as int?,
  //       team: json[artsFields.team] as String,
  //       score: json[artsFields.score] as String,
  //     );

//   Map<String, Object?> toJson() =>
//       {artsFields.id: id, artsFields.team: team, artsFields.score: score};
// }

  factory StudentModel.fromMap(Map<String, dynamic> map) {
    return StudentModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      score: map['score'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory StudentModel.fromJson(String source) =>
      StudentModel.fromMap(json.decode(source));

  // Implement toString to make it easier to see information about
  // each breed when using the print statement.
  @override
  String toString() => 'StudentModel(id: $id, name: $name, score: $score)';
}




 
// //part of the original code
// WebinarsDetailsModel fromMap(Map<String, Object?> map) {
//   final idWebinar = map['idWebinar'] as int;
//   final eventName = map['eventName'] as String;
//   final orgName = map['orgName'] as String;
//   final description = map['description'] as String;
//   return WebinarsDetailsModel(
//       id: idWebinar,
//       eventName: eventName,
//       orgName: orgName,
//       description: description);
// }
