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
        body: Stack(
          children: [
            Image.file(
              location.image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            )
          ],
        ),
        // Center(
        //   child: Text(
        //     location.title,
        //     style: Theme.of(context).textTheme.titleMedium!.copyWith(
        //           color: Theme.of(context).colorScheme.onBackground,
        //         ),
        //   ),
        //)
        );
  }
}
