import 'package:flutter/material.dart';


void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu), title: Text('Font Style'),
        ),
        body: Center(
          child: Container(
            child: const Text('MNC University',
              style: const TextStyle(
                backgroundColor: Color.fromRGBO(50, 168, 82, 1),
                color: Colors.red, fontSize: 30,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic, letterSpacing: 2,
                wordSpacing: 3, overflow: TextOverflow.fade,
                decoration: TextDecoration.underline, ), ),
          ),
        ),
      ),
    );
  }
}