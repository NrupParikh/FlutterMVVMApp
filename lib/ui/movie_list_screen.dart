import 'package:flutter/material.dart';
import 'package:flutter_mvvm_application/view_model/movie_vm.dart';

class MovieList extends StatelessWidget {
  final List<MovieViewModel> movies;

  const MovieList({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return ListTile(
            contentPadding: const EdgeInsets.all(10),
            leading: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(movie.poster)),
                  borderRadius: BorderRadius.circular(6)),
              width: 50,
              height: 100,
            ),
            title: Text(movie.title),
          );
        });
  }
}
