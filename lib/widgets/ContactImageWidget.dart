import 'package:flutter/material.dart';

class ContactImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage contact = AssetImage('images/contact.png');
    Image image = Image(image: contact, 
                        width: 150, 
                        height: 150
                        );
    return Container(
      child: image,      
    );
  }
}