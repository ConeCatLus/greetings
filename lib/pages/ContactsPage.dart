import 'package:flutter/material.dart';
import 'package:greetings/widgets/ContactImageWidget.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        child: Row(children: [ContactImageWidget(), ContactImageWidget(),]),
        padding: EdgeInsets.all(10.0),
    );
  }
}