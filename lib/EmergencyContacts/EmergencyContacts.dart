
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BloodDonorScreen extends StatelessWidget {
  const BloodDonorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blood Donor App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Emergency Contact Information',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const EmergencyContactForm(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement action on button press if needed
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}

class EmergencyContactForm extends StatefulWidget {
  const EmergencyContactForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EmergencyContactFormState createState() => _EmergencyContactFormState();
}

class _EmergencyContactFormState extends State<EmergencyContactForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _relationshipController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(labelText: 'Name'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a name';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _phoneController,
            decoration: const InputDecoration(labelText: 'Phone Number'),
            keyboardType: TextInputType.phone,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a phone number';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _relationshipController,
            decoration: const InputDecoration(labelText: 'Relationship'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a relationship';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}