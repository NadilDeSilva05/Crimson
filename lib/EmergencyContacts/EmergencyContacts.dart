import 'package:flutter/material.dart';

class EmergencyContact extends StatelessWidget {
  const EmergencyContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emergency Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'In case of emergency, please contact:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Add functionality to call emergency contact number
              },
              child: Text('Emergency Number 1'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add functionality to call emergency contact number
              },
              child: const Text('Emergency Number 2'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Instructions:',
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              '1. Stay calm and assess the situation.',
            ),
            const Text(
              '2. Administer first aid if trained to do so.',
            ),
            const Text(
              '3. Contact emergency services immediately.',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        tooltip: 'Back',
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
