import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pointer Event di Flutter'),
        ),
        body: PointerExample(),
      ),
    );
  }
}

class PointerExample extends StatefulWidget {
  @override
  _PointerExampleState createState() => _PointerExampleState();
}

class _PointerExampleState extends State<PointerExample> {
  String _pointerStatus = 'Tidak ada interaksi';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Listener(
        onPointerDown: (PointerDownEvent event) {
          setState(() {
            _pointerStatus = 'Pointer ditekan pada posisi: ${event.position}';
          });
        },
        onPointerMove: (PointerMoveEvent event) {
          setState(() {
            _pointerStatus = 'Pointer bergerak pada posisi: ${event.position}';
          });
        },
        onPointerUp: (PointerUpEvent event) {
          setState(() {
            _pointerStatus = 'Pointer dilepaskan pada posisi: ${event.position}';
          });
        },
        child: Container(
          width: 300,
          height: 300,
          color: Colors.blueAccent,
          child: Center(
            child: Text(
              _pointerStatus,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}