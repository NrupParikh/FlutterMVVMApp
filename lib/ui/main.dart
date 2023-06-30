import 'package:flutter/material.dart';
import 'package:flutter_mvvm_application/ui/MovieListPage.dart';
import 'package:flutter_mvvm_application/view_model/movie_list_vm.dart';
import 'package:provider/provider.dart';
// https://www.appsdeveloperblog.com/mvvm-design-pattern-in-flutter/
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie MVVM Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (context) => MovieListViewModel(),
        child: const MovieListPage()
      ),
    );
  }
}

