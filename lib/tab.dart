import 'package:flutter/material.dart';
import 'package:pertemuan5/tabbar_contact.dart';
import 'package:pertemuan5/tabbar_home.dart';

void main() {
  runApp(const TabBarExample());
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Flutter Example',
              style: TextStyle(
                fontFamily: 'Allison',
              ),
            ),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home_max_outlined), text: "Home"),
                Tab(icon: Icon(Icons.contact_page_outlined), text: "Contact")
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              TabBarHome(),
              TabBarContact(),
            ],
          ),
          backgroundColor: Colors.amberAccent,
        ),
      ),
    );
  }
}