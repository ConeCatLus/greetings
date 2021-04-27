import 'package:flutter/material.dart';
import 'package:greetings/widgets/ContactImageWidget.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hälsningar'), // Lägg till profil, i profil inställningar
      ),
        body: Center ( child: 
          Padding(
            child: Column(children: [ContactImageWidget(), ContactImageWidget(),]),  // Add Contacts to see in our page
            padding: EdgeInsets.all(5.0),                                        // Add padding between contacts
        ),
      ),
    ); 
  }
}