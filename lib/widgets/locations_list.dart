import 'package:flutter/material.dart';

import '../models/location.dart';

class LocationsList extends StatelessWidget {
  const LocationsList({super.key, required this.locations});

  final List<Location> locations;

  @override
  Widget build(BuildContext context) {
    if (locations.isEmpty) {
      return const Center(
        child: Text('No location added'),
      );
    }
    return ListView.builder(
        itemCount: locations.length,
        itemBuilder: (ctx, index) => ListTile(
              title: Text(
                locations[index].title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
            ));
  }
}
