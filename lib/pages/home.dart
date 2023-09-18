import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_dicoding/models/movies.dart';
import 'package:project_dicoding/pages/detail_movie.dart';
import 'package:project_dicoding/widgets/card.dart';

class Home extends StatelessWidget {
  Home({super.key});

  CarouselController carouselController = CarouselController();
  final MovieCollection _movieCollection = MovieCollection();

  @override
  Widget build(BuildContext context) {
    List<Widget> movieTrending = [];
    List<Movie> movies = _movieCollection.getMoviesKorean();
    for (var element in movies) {
      movieTrending.add(CardMovie(movie: element));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              items: movieTrending,
              carouselController: carouselController,
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 20),
                height: 250,
                enlargeCenterPage: true,
                viewportFraction: 0.4,
                initialPage: 2,
              ),
            ),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Korean Drama",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 170,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 20),
                    itemCount: movies.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              DetailMovie(movie: movies[index]),
                        ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            Container(
                              width: 100,
                              height: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(movies[index].imagePath),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 100,
                              alignment: Alignment.topLeft,
                              child: Text(
                                movies[index].title,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
