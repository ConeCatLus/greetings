import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:greetings/Firebase communication/UserContacts.dart';

class UserData {
  String firstname;
  String lastname;

  // ignore: deprecated_member_use
  List<Contact> contacts = List<Contact>();

  DocumentReference reference;
  
  UserData(this.firstname, this.lastname, {this.contacts});
  // 5
  factory UserData.fromSnapshot(DocumentSnapshot snapshot) {
    UserData newUser = UserData.fromJson(snapshot.data());
    newUser.reference = snapshot.reference;
    return newUser;
  }
  // 6
  factory UserData.fromJson(Map<String, dynamic> json) => _userfromjson(json);
  // 7
  Map<String, dynamic> toJson() => _usertojson(this);
  @override
  String toString() => "UserData<$firstname>";
}

UserData _userfromjson(Map<String, dynamic> json) {
  return UserData(
    json['firstname'] as String,
    json['lastname'] as String,
    contacts: _convertContacts(json['contacts'] as List)
  );
}

List<Contact> _convertContacts(List contactList) {
  if (contactList == null) {
    return null;
  }
  // ignore: deprecated_member_use
  List<Contact> contacts =  List<Contact>();
    contactList.forEach((contact) {
      contacts.add(Contact.fromJson(contact));
  });
  return contacts;
}

Map<String, dynamic> _usertojson(UserData instance) => <String, dynamic> {
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'contacts': _ContactList(instance.contacts),
    };
// 4
List<Map<String, dynamic>> _ContactList(List<Contact> contacts) {
  if (contacts == null) {
    return null;
  }
  List<Map<String, dynamic>> contactMap =List<Map<String, dynamic>>();
  contacts.forEach((vaccination) {
    contactMap.add(vaccination.toJson());
  });
  return contactMap;
}