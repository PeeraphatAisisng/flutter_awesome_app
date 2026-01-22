import 'package:flutter/material.dart';
import 'package:flutter_awesome_app/views/login_ui.dart';
import 'package:flutter_awesome_app/views/signup.ui.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 251, 92),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 100),

            Image.asset(
              'assets/images/logo (1).png',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 20),

            const Text(
              "Welcome App",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black,
              ),
            ),

            const Text(
              "Created by Team 01",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.black,
              ),
            ),

            const Text(
              "Souteast Asia University",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 50),
            Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    OutlinedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginUi(),
      ), 
    );
  },
  style: OutlinedButton.styleFrom(
    side: const BorderSide(color: Colors.black),
    fixedSize: const Size(150, 50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  child: const Text(
    'LOGIN',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black, // 👈 สีตัวอักษรดำ
    ),
  ),
),


    const SizedBox(width: 20),

    ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SignupUi(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        fixedSize: const Size(150, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Text(
        'SIGNUP',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
  ],
),
          ],
        ),
      ),
    );
  }
}