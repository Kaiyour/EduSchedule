import 'package:flutter/material.dart';
import 'attendance_screen.dart';
import 'schedule_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: const Text('Jadwal Kuliah'),
            leading: const Icon(Icons.schedule),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ScheduleScreen()),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Absensi'),
            leading: const Icon(Icons.check_circle),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AttendanceScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
