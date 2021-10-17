import 'package:flutter/material.dart';
import 'package:mobile_dev_q1/pages/to_do.dart';
import 'package:mobile_dev_q1/pages/profile_page.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.8),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TodoList()));
                },
                child: const Text('TO DO')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Profile()));
                },
                child: const Text('PROFILE'))
          ],
        ),
      ),
    );
  }
}
