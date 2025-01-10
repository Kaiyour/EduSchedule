import 'package:flutter/material.dart';
import 'package:EduSchedule/screens/login_screen.dart';
import 'package:EduSchedule/styles/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EduSchedule',
      theme: AppStyles.themeData,
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}
