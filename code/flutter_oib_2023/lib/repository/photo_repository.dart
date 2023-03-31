import 'dart:convert';

import 'package:flutter_oib_2023/env/env.dart';
import 'package:flutter_oib_2023/models/photo.dart';
import 'package:http/http.dart' as http;

class PhotoRepository {
  PhotoRepository();

  Future<List<Photo>?> getPhotoList() async {
    var response = await http.get(
      Uri.parse(
          "${Env.pexelsApiUrl}/search?query=penguins&orientation=portrait&per_page=40"),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': Env.pexelsApiKey,
      },
    );

    final responseBodyParsed = json.decode(response.body);

    return responseBodyParsed["photos"]
        .map<Photo>((json) => Photo.fromJson(json))
        .toList();
  }
}
