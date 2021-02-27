import 'package:flutter/material.dart';
import 'package:greetings/pages/ContactViewPage.dart';

class ContactImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage contact = AssetImage('images/contact.png');
    Image image = Image(image: contact, 
                        width: 150, 
                        height: 150
                        );
    final name = new Text('Gustav', );
    return Container(
        child: GestureDetector(onTap: contactClicked,
                          child: Column(children: [image, name],
          ),
        ),
    );
  }
}

void contactClicked() {
  ContactViewPage();
}