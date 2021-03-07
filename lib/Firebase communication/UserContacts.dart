import 'package:cloud_firestore/cloud_firestore.dart';

class Contacts {
  // 1
  String user;
  // 2
  DocumentReference reference;
  // 3
  Contacts(this.user);
  // 4
  factory Contacts.fromJson(Map<dynamic, dynamic> json) => _contactsfromjson(json);
  // 5
  Map<String, dynamic> toJson() => _contactstojson(this);
  @override
  String toString() => "Contacts<$user>";
}

Contacts _contactsfromjson(Map<dynamic, dynamic> json) {
  return Contacts(
    json['user'] as String,
  );
}
//2
Map<String, dynamic> _contactstojson(Contacts instance) =>
    <String, dynamic> {
      'user': instance.user,
    };