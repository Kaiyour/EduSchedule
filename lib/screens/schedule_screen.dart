import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jadwal Kuliah'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ListTile(
            title: Text('Matematika'),
            subtitle: Text('Senin, 08:00 - 10:00'),
          ),
          ListTile(
            title: Text('Pemrograman'),
            subtitle: Text('Rabu, 10:00 - 12:00'),
          ),
          ListTile(
            title: Text('Algoritma'),
            subtitle: Text('Jumat, 13:00 - 15:00'),
          ),
        ],
      ),
    );
  }
}
