import 'dart:convert';

class StudentModel {
  int? id;
  final String name;
  final String score;

  StudentModel({required this.name, required this.score, this.id});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'score': score,
    };
  }

  factory StudentModel.fromMap(Map<String, dynamic> map) {
    return StudentModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      score: map['score'] ?? '',
    );
  }

  // String toJson() => json.encode(toMap());

  // factory StudentModel.fromJson(String source) =>
  //     StudentModel.fromMap(json.decode(source));

  // Implement toString to make it easier to see information about
  // each breed when using the print statement.
  @override
  String toString() => 'StudentModel(id: $id, name: $name, score: $score)';
}






















// //this is the original code part
// //   static StudentModel fromMap(Map<String, Object?> map) {
// //     final id = map['id'] as int;
// //     final name = map['name'] as String;
// //     final score = map['score'] as String;

// //     return StudentModel(id: id, name: name, score: score);
// //   }
// // }





// //FAILED ATTEMPT IN CREATING A SINGLE TABLE FOR THE MULTIPLE FEATURES
// //   class StudentModel {
// //   int? id;
// //   var name;
// //   var score;
// //   var eventName;
// //   var orgName;
// //   var description;

// //   StudentModel(
// //       {this.name,
// //       this.score,
// //       this.eventName,
// //       this.orgName,
// //       this.description,
// //       id = 0});

// //   static StudentModel fromMap(Map<String, Object?> map) {
// //     final id = map['id'] as int;
// //     final name = map['name'] as String;
// //     final score = map['score'] as String;
// //     final eventName = map['eventName'] as String;
// //     final orgName = map['orgName'] as String;
// //     final description = map['description'] as String;

// //     return StudentModel(
// //         id: id,
// //         name: name,
// //         score: score,
// //         eventName: eventName,
// //         orgName: orgName,
// //         description: description);
// //   }
// // }