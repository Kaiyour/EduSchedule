import 'package:flutter/material.dart';
import 'package:project1/home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     home: Scaffold(
       body: Center(
         child: Image(
             image:
             NetworkImage("https://i.pinimg.com/originals/e2/3c/d9/e23cd9aaf6b216fab1c9bc4364284d65.jpg"),
       ),
     ),
    )
    );
  }
}

  class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
    State<MyHomePage> createState() => _MyHomePageState();
  }

  class _MyHomePageState extends State <MyHomePage> {
    int _counter = 0;

    void _incerementCounter() {
      setState(() {
        _counter++;
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(

          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,

          title: Text(widget.title),
        ),
        body: Center(
          child: Text(
              "Some exciting text",
            style: TextStyle(color:Colors.red,fontSize: 14),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incerementCounter,
          tooltip: 'Increment',
          child: const Icon (Icons.add),
        ),
      );
    }
  }
