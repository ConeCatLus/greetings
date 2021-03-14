import 'package:cloud_firestore/cloud_firestore.dart';

class Contact {
  // 1
  String user;
  // 2
  DocumentReference reference;
  // 3
  Contact(this.user);
  // 4
  factory Contact.fromJson(Map<dynamic, dynamic> json) => _contactsfromjson(json);
  // 5
  Map<String, dynamic> toJson() => _contactstojson(this);
  @override
  String toString() => "Contact<$user>";
}

Contact _contactsfromjson(Map<dynamic, dynamic> json) {
  return Contact(
    json['user'] as String,
  );
}
//2
Map<String, dynamic> _contactstojson(Contact instance) =>
    <String, dynamic> {
      'user': instance.user,
    };