import 'package:flutter/material.dart';

class EmergencyContact extends StatelessWidget {
  const EmergencyContact({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emergency Contact'),
        backgroundColor: Colors.redAccent, // Set app bar color
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
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.black, // Set button background color to black
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0), // Square shape
                ),
              ),
              child: const Text(
                'Emergency Number 1',
                style:
                    TextStyle(color: Colors.white), // Set text color to white
              ),
            ),
            const SizedBox(height: 20), // Increase the gap between buttons
            ElevatedButton(
              onPressed: () {
                // Add functionality to call emergency contact number
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.black, // Set button background color to black
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0), // Square shape
                ),
              ),
              child: const Text(
                'Emergency Number 2',
                style:
                    TextStyle(color: Colors.white), // Set text color to white
              ),
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
        backgroundColor: Colors.redAccent,
        child: const Icon(Icons.arrow_back), // Set FAB color
      ),
    );
  }
}
