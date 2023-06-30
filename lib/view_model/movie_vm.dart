import 'package:flutter_mvvm_application/models/movie.dart';

class MovieViewModel {
  late final Movie movie;

  MovieViewModel({required this.movie});

  String get title {
    return movie.title;
  }

  String get poster {
    return movie.postUrl;
  }
}
