

import 'package:flutter/material.dart';

class LocationsListScreen extends StatelessWidget {
  const LocationsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Locations'),
        actions: [
          IconButton(icon: const Icon(Icons.add),
          onPressed: () {
            
          })
        ],
      )
    );
  }
}