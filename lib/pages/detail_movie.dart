import 'package:flutter/material.dart';
import 'package:project_dicoding/models/movies.dart';
import 'package:project_dicoding/widgets/favorite.dart';

class DetailMovie extends StatelessWidget {
  final Movie movie;

  const DetailMovie({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Movie"),
        actions: const [
          Row(
            children: [
              FavoriteButton(),
              SizedBox(width: 20),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 250,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(movie.imagePath),
                        ),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      movie.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                movie.descripton,
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Release Date",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              movie.releaseDate,
            ),
            const SizedBox(height: 20),
            const Text(
              "Actors",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: movie.actors.length * 20,
              child: ListView.builder(
                itemCount: movie.actors.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(movie.actors[index]);
                },
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Directors",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: movie.directors.length * 20,
              child: ListView.builder(
                itemCount: movie.directors.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(movie.directors[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
