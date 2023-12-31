import 'package:flutter/material.dart';
import 'package:locations_app/screens/location_details.dart';

import '../models/location.dart';

class LocationsList extends StatelessWidget {
  const LocationsList({super.key, required this.locations});

  final List<Location> locations;

  @override
  Widget build(BuildContext context) {
    if (locations.isEmpty) {
      return Center(
        child: Text(
          'No location added',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
      );
    }
    return ListView.builder(
        itemCount: locations.length,
        itemBuilder: (ctx, index) => ListTile(
          leading: CircleAvatar(
            radius: 26,
            backgroundImage: FileImage(locations[index].image),
          ),
              title: Text(
                locations[index].title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) =>
                        LocationDetailScreen(location: locations[index]),
                  ),
                );
              },
            ));
  }
}
