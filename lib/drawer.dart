import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          ),
          title: const Text('Drawer Example'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Meitro Hartanto"),
                accountEmail: Text("meitro.hartanto@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(
                    "S",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Container(
            child: const Text(
              'MNC University',
              style: TextStyle(
                backgroundColor: Color.fromRGBO(50, 168, 82, 1),
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
                letterSpacing: 2,
                wordSpacing: 3,
                overflow: TextOverflow.fade,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ),
    );
  }
}