import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.black,
            child: const Placeholder(),
          ),
          Positioned(
            top: 16.0, // adjust the position as needed
            left: 16.0, // adjust the position as needed
            child: Image.asset(
              'assets/welcomelogo.png', // replace with your logo asset path
              width: 50.0, // adjust the size as needed
              height: 50.0, // adjust the size as needed
            ),
          ),
        ],
      ),
    );
  }
}
