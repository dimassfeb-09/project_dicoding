class Movie {
  final String title;
  final String imagePath;
  final String descripton;
  final List<String> actors;
  final List<String> directors;
  final String releaseDate;

  Movie({
    required this.title,
    required this.imagePath,
    required this.descripton,
    required this.actors,
    required this.directors,
    required this.releaseDate,
  });
}

class MovieCollection {
  List<Movie> getMoviesKorean() {
    return [
      Movie(
        title: "A Time Called You",
        imagePath: "assets/images/A_Time_Called_You-p2.jpg",
        actors: ["Ahn Hyo-Seop", "Jeon Yeo-Bin", "Kang Hoon"],
        directors: ["Kim Jin-Won"],
        descripton:
            "Han Jun-Hee’s (Jeon Yeo-Bin) boyfriend Koo Yeon-Jun (Ahn Hyo-Seop) died 1 year ago. She still hasn't gotten over the death of her boyfriend and misses him a lot.",
        releaseDate: "8 September 2023",
      ),
      Movie(
        title: "Moving",
        imagePath: "assets/images/moving.jpeg",
        descripton:
            "Kim Bong-Seok, Jang Hui-Soo and Lee Gang-Hoon attend the same high school. They look like ordinary students, but they have special abilities that they inherited from their parents. Kim Bong-Seok has the ability to fly. Jang Hui-Soo has excellent athletic abilities and she is able to rapidly recover from injuries, like being shot or stabbed. Lee Gang-Hoon has uncanny power and speed.",
        actors: ["Ryoo Seung-Ryong", "Han Hyo-Joo"],
        directors: ["Park In-Je"],
        releaseDate: "9 Agustus 2023",
      ),
      Movie(
        title: "Arthdal Chronicles: The Sword of Aramun",
        imagePath: "assets/images/The_Sword_of_Aramun-p1.jpeg",
        directors: ["Kim Kwang-Sik"],
        actors: ["Jang Dong-Gun", "Tanya", "Eunsom"],
        descripton:
            "Set 8 years after the first season of 'Arthdal Chronicles.'",
        releaseDate: "9 September 2023",
      ),
      Movie(
        title: "Unpredictable Family ",
        imagePath: "assets/images/Udangtangtang_Family-p1.jpg",
        directors: ["Moon Young-Hoon"],
        actors: ["Nam Sang-Ji"],
        descripton:
            "Yoo Eun-Sung (Nam Sang-Ji) is an unknown actress, who works for a theater company. She is neglected at home and at the theater company. Yoo Eun-Sung gets involved with Kang Sun-Woo (Lee Do-Gyeom). He is a movie director, who succesffuly made his movie debut in Hollywood. He returns to South Korea and gets involved with unknown actress Yoo Eun-Sung.",
        releaseDate: "18 September 2023",
      ),
    ];
  }
}
