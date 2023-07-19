

import 'package:flutter/material.dart';
import 'package:locations_app/widgets/locations_list.dart';

class LocationsScreen extends StatelessWidget {
  const LocationsScreen({super.key});

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
      ),
      body: LocationsList(locations: [],)
    );
  }
}