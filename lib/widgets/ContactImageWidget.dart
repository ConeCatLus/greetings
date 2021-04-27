import 'package:flutter/material.dart';
import 'package:greetings/pages/ContactViewPage.dart';

class ContactImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      child: GestureDetector(onTap: () {                        // If the Contact Container is Tapped switch page
          Navigator.push(
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
  const name = Text("Asma Syed",                       // Contact name  
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)); // Contact name Styling
  const notice = Text("har ...",                       // Contact name  
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20)); // Notification Styling
  AssetImage contact = AssetImage('images/contact.png');      // Contact image source
  ClipRRect image = ClipRRect(                                // Contact image is created
                    borderRadius: BorderRadius.circular(10),  // Rounded edges to Contact Image
                    child: Image(image: contact,
                      width: 150,                             // Rouded edges to Contact Imag
                      height: 150,                            // Rouded edges to Contact Imag
                      )
                    );
    return Container(
      child: Row(children: [Container(width: 15), image, Container(width: 15), Column(children: [Container(height: 50), name, Container(height: 15), notice])]),   // Contact Container contents     
      height: 180,                                           // Contact Container height
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