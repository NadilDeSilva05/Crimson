import 'package:crimson/EmergencyContacts/EmergencyContacts.dart';
import 'package:crimson/Health%20Tips/healthtips.dart';
import 'package:crimson/UserProfile/UserProfile.dart';
import 'package:flutter/material.dart'; // Make sure to create and import healthtips.dart

class HomePage extends StatelessWidget {
  final String userId;
  const HomePage({required this.userId, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(
                26.0, 32.0, 16.0, 16.0), // Adjust top padding here
            child: Row(
              crossAxisAlignment:
                  CrossAxisAlignment.center, // Aligns items vertically
              children: [
                SizedBox(
                  width:
                      50.0, // Adjust the width to create space below the icon
                  height:
                      50.0, // Adjust the height to create space below the icon
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.local_hospital,
                      color: Colors.red,
                      size: 30.0,
                    ),
                  ),
                ),
                SizedBox(width: 15.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8.0), // Adjust the height as needed
                    Text(
                      'CRIMSON +',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.white,
            thickness: 1.0,
            indent: 16.0,
            endIndent: 16.0,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              color: Colors.white,
              width: double.infinity,
              height: 200.0,
              child: const Center(
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 100.0,
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                _buildGridItem(Icons.person, 'Donor Profile', () {
                  // Handle Donor Profile button press
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ProfileSummaryApp(userId: userId)),
                  );
                }),
                _buildGridItem(Icons.lightbulb, 'Health Tips', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HealthTips()),
                  );
                }),
                _buildGridItem(Icons.phone, 'Emergency Contacts', () {
                  // Handle Emergency Contacts button press
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EmergencyContact(userId: userId)),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(IconData icon, String title, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.black,
              size: 50.0,
            ),
            const SizedBox(height: 8.0),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
