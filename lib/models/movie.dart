class Movie {
  late final String title;
  late final String postUrl;

  Movie({required this.title, required this.postUrl});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(title: json["Title"], postUrl: json["Poster"]);
  }
}
