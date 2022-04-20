import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

Future<Model> fetchAlbum() async {
  final response = await http.get(
    Uri.parse('https://api.nextgenapp.net/api-nextgen/event/'),
    // Send authorization headers to the backend.
    headers: {
      HttpHeaders.authorizationHeader: '1a2f563a88755bd45fe93f797dc5e179d175db6d ',
    },
  );
  final responseJson = jsonDecode(response.body);

  return Model.fromJson(responseJson);
}

List<Model> parsePhotos(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Model>((json) => Model.fromJson(json)).toList();
}

class Model {
  final String eventname;
  final String images;
  final String description;

  const Model({
    required this.eventname,
    required this.images,
    required this.description,
  });

  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
      eventname: json['eventname'],
      images: json['images'],
      description: json['description'],
    );
  }
}