import 'package:flutter/material.dart';
import 'dart:math';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  double _left = 0;
  double _top = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: _left,
          top: _top,
          child: GestureDetector(
            //Tap
              onTap: () => print('I was tapped!'),

              //Double-tap
              onDoubleTap: () => print('I was double tapped!'),

              //Press and hold
              onLongPress: () => print('I was long press!'),

              //Drag, pan, and scale
              onPanUpdate: (details) => setState(() {
                _top = max(0, _top + details.delta.dy);
                _left = max(0, _left + details.delta.dx);
              }),

              child: Container(
                height: 100,
                width: 100,
                color: const Color.fromRGBO(50, 168, 82, 1),
              )
          ),

        ),
      ],
    );
  }
}