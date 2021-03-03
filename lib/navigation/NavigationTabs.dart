import 'package:flutter/material.dart';
import 'package:greetings/pages/HomePage.dart';
import 'package:greetings/pages/ContactsPage.dart';

class NavigationTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,                      // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: Text('Hälsningar'),  // Set title
            bottom: TabBar(
              tabs: [                   // Tab icons
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.people_outline_sharp)),
              ],
            ),
          ),
          body: TabBarView(
            children: [                 // Add pages, locate the files under "greetings/pages" to see the page Content
              HomePage(),
              ContactsPage(),
            ],
          ),
        ),
      ),
    );
  }
}