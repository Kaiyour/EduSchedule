import 'package:flutter/material.dart';
import 'package:AplikasiJadwalKuliah/screens/login_screen.dart';
import 'package:AplikasiJadwalKuliah/styles/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Pengingat Jadwal Kuliah',
      theme: AppStyles.themeData,
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}
