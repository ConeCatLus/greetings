import 'package:flutter/material.dart';
import 'package:greetings/pages/ContactViewPage.dart';

class ContactImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      child: GestureDetector(onTap: () {                        // If the Contact Container is Tapped switch page
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => ContactViewPage()),   // Swap to ContactViewPage() when tapped
          );
        }, 
        child: contact()                                      // Create Contact Container
        ), 
        padding: EdgeInsets.all(7.0),                         // Set up padding for Contact Container
    );
  }
}

Widget contact() {  
  const name = Text("Gustav Carlstedt",                       // Contact name  
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)); // Contact name Styling
  AssetImage contact = AssetImage('images/contact.png');      // Contact image source
  ClipRRect image = ClipRRect(                                // Contact image is created
                    borderRadius: BorderRadius.circular(10),  // Rouded edges to Contact Image
                    child: Image(image: contact, 
                      width: 150,                             // Rouded edges to Contact Imag
                      height: 150,                            // Rouded edges to Contact Imag
                      )
                    );
    return Container(
      child: Column(children: [image, Container(height: 5), name]),   // Contact Container contents     
      height: 200,                                            // Contact Container height
      decoration: BoxDecoration(
        color: Colors.blue, 
        borderRadius: BorderRadius.circular(10),              // Rouded edges to Contact Container
        boxShadow: [                                          // Contact Container shadowing
          BoxShadow(
            color: Colors.blue.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),                             // changes position of shadow
          ),
        ],       
      ),
    );
}