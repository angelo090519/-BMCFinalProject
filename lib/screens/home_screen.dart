import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              // AuthWrapper will handle navigation
            },
          )
        ],
      ),
      body: const Center(
        child: Text(
          'You are logged in!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
