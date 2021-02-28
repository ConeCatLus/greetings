import 'package:flutter/material.dart';
import 'package:greetings/pages/ContactViewPage.dart';

class ContactImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      child: GestureDetector(onTap: contactClicked, child: contact()),
      padding: EdgeInsets.all(7.0),      
    );
  }
}

Widget contact() {  
    const name = Text("Gustav Carlstedt",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18));
    AssetImage contact = AssetImage('images/contact.png');
    ClipRRect image = ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(image: contact, 
                        width: 150, 
                        height: 150,                        
                        ));
      return Container(
        child: Column(children: [image, Container(height: 5), name]),
        decoration: BoxDecoration(
          color: Colors.blue, 
          borderRadius: BorderRadius.circular(5),         
        ),
         height: 200,
      );
}

void contactClicked() {
  ContactViewPage();
}