// import 'dart:convert';
// import 'package:flutter/services.dart';

// final String tablescore = 'arts';

// class artsFields {
//   static final List<String> values = [id, team, score];

//   static final String id = '_id';
//   static final String team = 'team';
//   static final String score = 'score';
// }

// class arts_score {
//   final int? id;
//   final String team;
//   final String score;

//   const arts_score({
//     this.id,
//     required this.team,
//     required this.score,
//   });

//   arts_score copy({
//     int? id,
//     String? team,
//     String? score,
//   }) =>
//       arts_score(
//         id: id ?? this.id,
//         team: team ?? this.team,
//         score: score ?? this.score,
//       );

//   static arts_score fromJson(Map<String, Object?> json) => arts_score(

//       // id: json[artsFields.id] as int?,
//       team: json[artsFields.team] as String,
//       score: json[artsFields.score] as String);

//   Map<String, Object?> toJson() =>
//       {artsFields.id: id, artsFields.team: team, artsFields.score: score};
// }
