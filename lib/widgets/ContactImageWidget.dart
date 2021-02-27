import 'package:flutter/material.dart';

class ContactImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage contact = AssetImage('images/contact.png');
    Image image = Image(image: contact, 
                        width: 100, 
                        height: 100
                        );
    return Container(
      child: image,      
    );
  }
}