import 'package:flutter/material.dart';
import 'package:greetings/pages/HomePage.dart';
import 'package:greetings/pages/ContactsPage.dart';

class NavigationTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.people_outline_sharp)),
              ],
            ),
            title: Text('Hälsningar'),
          ),
          body: TabBarView(
            children: [
              HomePage(),
              ContactsPage(),
            ],
          ),
        ),
      ),
    );
  }
}