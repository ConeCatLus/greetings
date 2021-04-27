import 'package:flutter/material.dart';

class ContactViewPage extends StatelessWidget {
  const ContactViewPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asma Syed"),
      ),
      body: Center( child: 
          Padding(
            child: Row(children: [Column(children: [actionButton(), actionButton()]), Column(children: [actionButton(), actionButton()] ) ]),  // Add Contacts to see in our page
            padding: EdgeInsets.all(5.0),  // Add padding between contacts
        ),
      ),
    );
  }
}

Widget actionButton() { 
  return Container(
    height: 180, 
    width: 90,                                          // Contact Container height
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),              // Rouded edges to Contact Container
        boxShadow: [                                          // Contact Container shadowing
          BoxShadow(
            color: Colors.blueGrey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 3,
            offset: Offset(0, 3),                             // changes position of shadow
          ),
        ],       
      ),
  );
}
  