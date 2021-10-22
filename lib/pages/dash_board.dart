import 'package:flutter/material.dart';
import 'package:mobile_dev_q1/pages/to_do.dart';
import 'package:mobile_dev_q1/pages/profile_page.dart';
import 'package:mobile_dev_q1/pages/settings_page.dart';
import 'package:mobile_dev_q1/pages/pomodoro_timer.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome to the To-do List app, Dear User',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.list),
              label: Text("To-Do List"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const TodoList()));
              },
            ),

            ElevatedButton.icon(
              icon: Icon(Icons.person),
              label: Text("User Profile"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Profile()));
              },
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.alarm),
              label: Text("Pomodoro Timer"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const PomodoroTimer()));
              },
            ),//Pomodoro Timer
            ElevatedButton.icon(
              icon: Icon(Icons.settings),
              label: Text("Settings"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

