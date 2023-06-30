import 'package:flutter_mvvm_application/models/movie.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Webservice {
  Future<List<Movie>> fetchMovies(String keyword) async {
    //http://omdbapi.com/?s=Ironman&apikey=362e26e0

    final url = "http://omdbapi.com/?s=$keyword&apikey=362e26e0";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final Iterable json = body["Search"];
      return json.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception("Unable to perform request!");
    }
  }
}
