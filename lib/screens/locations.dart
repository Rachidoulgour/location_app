

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locations_app/providers/user_locations.dart';
import 'package:locations_app/screens/add_location.dart';
import 'package:locations_app/widgets/locations_list.dart';

class LocationsScreen extends ConsumerWidget {
  const LocationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userLocations = ref.watch(userLocationsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Locations'),
        actions: [
          IconButton(icon: const Icon(Icons.add),
          onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const AddLocationScreen(),
                  ),
                );
          })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LocationsList(locations: userLocations,),
      )
    );
  }
}