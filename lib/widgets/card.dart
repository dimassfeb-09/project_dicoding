import 'package:flutter/material.dart';
import 'package:project_dicoding/pages/detail_movie.dart';

import '../models/movies.dart';

class CardMovie extends StatelessWidget {
  final Movie movie;

  const CardMovie({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => DetailMovie(movie: movie),
        ),
      ),
      child: Container(
        height: 100,
        width: 200,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(movie.imagePath)),
        ),
      ),
    );
  }
}
