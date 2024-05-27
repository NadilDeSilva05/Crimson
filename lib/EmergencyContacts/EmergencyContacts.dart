import 'package:crimson/Homepage/homepage.dart';
import 'package:flutter/material.dart';
//import 'main.dart'; // Import the main.dart file where HomePage is defined

class EmergencyContact extends StatelessWidget {
  const EmergencyContact({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emergency Contacts',
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const EmergencyContactScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class EmergencyContactScreen extends StatelessWidget {
  const EmergencyContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                  builder: (context) => const HomePage(
                        userId: '',
                      )),
              (Route<dynamic> route) => false,
            );
          },
        ),
        title: const Text('Emergency Contacts',
            style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(color: Colors.white),
            buildEmergencyContact(
              Icons.local_hospital,
              "Ambulance",
              "Call 1234567890",
            ),
            buildEmergencyContact(
              Icons.fire_truck,
              "Fire Department",
              "Call 0987654321",
            ),
            buildEmergencyContact(
              Icons.local_police,
              "Police",
              "Call 1122334455",
            ),
            buildEmergencyContact(
              Icons.warning,
              "Poison Control",
              "Call 5566778899",
            ),
            const SizedBox(height: 20),
            const Text(
              'Instructions:',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'In case of an emergency, contact the appropriate service immediately. Provide them with clear and concise information about the situation and your location. Remain calm and follow any instructions given by the emergency personnel.',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            const Spacer(),
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'images/logo.jpg',
                    height: 50,
                  ),
                  const SizedBox(height: 8),
                  const Text('CRIMSON +',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildEmergencyContact(IconData icon, String title, String number) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                number,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
