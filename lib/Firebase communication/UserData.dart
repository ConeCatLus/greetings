import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:greetings/Firebase communication/UserContacts.dart';

class UserData {
  String firstname;
  String lastname;

  List<Contacts> vaccinations = List<Contacts>();

  DocumentReference reference;
  
  UserData(this.firstname, this.lastname);
  // 5
  factory UserData.fromSnapshot(DocumentSnapshot snapshot) {
    UserData newPet = UserData.fromJson(snapshot.data);
    newPet.reference = snapshot.reference;
    return newPet;
  }
  // 6
  factory UserData.fromJson(Map<String, dynamic> json) => _petfromjson(json);
  // 7
  Map<String, dynamic> toJson() => _pettojson(this);
  @override
  String toString() => "UserData<$firstname>";
}

UserData _petfromjson(Map<String, dynamic> json) {
  return UserData(
    json['firstname'] as String,
    json['lastname'] as String,
  );
}

Map<String, dynamic> _pettojson(UserData instance) => <String, dynamic> {
      'firstname': instance.firstname,
      'lastname': instance.lastname,
    };

List<Map<String, dynamic>> _contactslist(List<Contacts> vaccinations) {
  if ( == null) {
    return null;
  }
  List<Map<String, dynamic>> contactsMap =List<Map<String, dynamic>>();
  vaccinations.forEach((vaccination) {
    vaccinationMap.add(vaccination.toJson());
  });
  return vaccinationMap;
}