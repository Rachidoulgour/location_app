import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locations_app/models/location.dart';

class UserLocationsNotifier extends StateNotifier<List<Location>> {
  UserLocationsNotifier() : super(const []);

  void addLocation(String title, File image, double lat, double long) {
    final newLocation = Location(title: title, image: image, lat: lat, long: long);
    state = [newLocation, ...state];
  }
}

final userLocationsProvider = StateNotifierProvider<UserLocationsNotifier, List<Location>>(
  (ref) => UserLocationsNotifier(),
);
