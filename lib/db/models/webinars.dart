import 'dart:convert';

class WebinarsDetailsModel {
  int? id;
  final String eventName;
  final String orgName;
  final String description;

  WebinarsDetailsModel(
      {required this.eventName,
      required this.orgName,
      required this.description,
      this.id});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'eventName': eventName,
      'orgName': orgName,
      'description': description,
    };
  }

  factory WebinarsDetailsModel.fromMap(Map<String, dynamic> map) {
    return WebinarsDetailsModel(
      id: map['id']?.toInt() ?? 0,
      eventName: map['eventName'] ?? '',
      orgName: map['orgName'] ?? '',
      description: map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory WebinarsDetailsModel.fromJson(String source) =>
      WebinarsDetailsModel.fromMap(json.decode(source));

  // Implement toString to make it easier to see information about
  // each breed when using the print statement.
  @override
  String toString() {
    return 'WebinarsDetailsModel(id: $id, eventName: $eventName, orgName: $orgName, description: $description)';
  }
}

//part of the original code
WebinarsDetailsModel fromMap(Map<String, Object?> map) {
  final id = map['id'] as int;
  final eventName = map['eventName'] as String;
  final orgName = map['orgName'] as String;
  final description = map['description'] as String;
  return WebinarsDetailsModel(
      id: id, eventName: eventName, orgName: orgName, description: description);
}
