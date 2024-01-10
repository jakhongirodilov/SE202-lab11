import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = context.watch<User?>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome, ${user?.email ?? 'Guest'}'),
            // Add other UI elements as needed
            TextButton(
              onPressed: () => FirebaseAuth.instance.signOut(),
              child: Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}
