import 'package:flutter/material.dart';
import 'package:locations_app/models/location.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

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
          // Image.file(
          //   location.image,
          //   fit: BoxFit.cover,
          //   width: double.infinity,
          //   height: double.infinity,
          // ),
          FlutterMap(
            options: MapOptions(
                center: LatLng(location.lat, location.long), minZoom: 10.0),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: const ['a', 'b', 'c'],
              ),
              MarkerLayer(markers: [
                Marker(
                  width: 70.75,
                  height: 70.75,
                  builder: (context) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'You\'re here',
                        style: TextStyle(color: Colors.red),
                        overflow: TextOverflow.ellipsis,
                      ),
                      IconButton(
                        icon: const Icon(Icons.location_on),
                        color: Colors.red,
                        iconSize: 35.0,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  point: LatLng(
                    location.lat,
                    location.long,
                  ),
                )
              ]),
            ],
          ),
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
