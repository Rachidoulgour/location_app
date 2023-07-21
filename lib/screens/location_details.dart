import 'package:flutter/material.dart';
import 'package:locations_app/models/location.dart';

class LocationDetailScreen extends StatelessWidget {
  const LocationDetailScreen({super.key, required this.location});

  final Location location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(location.title),
        ),
        body: Center(
          child: Text(
            location.title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        ));
  }
}
