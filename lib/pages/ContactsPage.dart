import 'package:flutter/material.dart';
import 'package:greetings/widgets/ContactImageWidget.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ContactImageWidget(),
      ),
    );
  }
}