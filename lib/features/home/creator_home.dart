import 'package:flutter/material.dart';

class CreatorHome extends StatelessWidget {
  const CreatorHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212), // Caza Dark Theme
      appBar: AppBar(
        title: const Text("Creator Dashboard"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.admin_panel_settings, size: 80, color: Color(0xFF2F80ED)),
            const SizedBox(height: 20),
            const Text(
              "Welcome, Creator!",
              style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "You have full access to manage files, messages, and the recycle bin.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushReplacementNamed(context, '/login'),
              child: const Text("Logout"),
            )
          ],
        ),
      ),
    );
  }
}