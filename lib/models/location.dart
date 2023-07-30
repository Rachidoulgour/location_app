import 'dart:io';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

class MapLocation {
  
}
class Location {
  Location({required this.title, required this.image, required this.lat, required this.long}) : id = uuid.v4();

  final String id;
  final String title;
  final File image;
  final double lat;
  final double long;
}