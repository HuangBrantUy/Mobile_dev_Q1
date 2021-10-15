import 'package:flutter/material.dart';
import 'package:mobile_dev_q1/pages/dash_board.dart';

class LoginFormPage extends StatefulWidget {
  const LoginFormPage({Key? key}) : super(key: key);

  @override
  _LoginFormPageState createState() => _LoginFormPageState();
}

class _LoginFormPageState extends State<LoginFormPage> {
  final mailController = TextEditingController();
  final passController = TextEditingController();
  bool obscureText = true;

  @override
  void dispose() {
    mailController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.8),
        child: Column(
          children: [
            TextFormField(
              controller: mailController,
              decoration: const InputDecoration(
                hintText: 'Enter your email',
                hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: passController,
              obscureText: obscureText,
              decoration: const InputDecoration(
                hintText: 'Enter your password',
                hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (mailController.text.isEmpty == false ||
                      passController.text.isEmpty == false) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Dashboard()));
                  } else {
                    debugPrint("Enter your email and password");
                  }
                },
                child: const Text('LOG IN'))
          ],
        ),
      ),
    );
  }
}
