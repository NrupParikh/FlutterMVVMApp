import 'package:flutter/material.dart';
import 'package:flutter_mvvm_application/api/webservice.dart';
import 'package:flutter_mvvm_application/view_model/movie_vm.dart';

class MovieListViewModel extends ChangeNotifier {
  List<MovieViewModel> movies = <MovieViewModel>[];

  Future<void> fetchMovies(String keyword) async {
    final result = await Webservice().fetchMovies(keyword);
    movies = result.map((item) => MovieViewModel(movie: item)).toList();
  }
}
