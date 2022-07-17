import 'package:listmovies/models/movies.dart';

class Bioskop {
  String name;
  String address;
  String telp;
  List<Movie> movieNow = List<Movie>.from(movieList['NowPlaying']!);

  Bioskop({required this.name, required this.address, required this.telp});

  void addMovie(Movie movie) {
    movieNow.add(movie);
    movieList['NowPlaying']!.add(movie);
  }

  void addMovies(List<Movie> movies) {
    movieNow.addAll(movies);
    movieList['NowPlaying']!.addAll(movies);
  }

  void removeMovie(String movie) {
    movieNow.removeWhere((element) => element.title == movie);
  }

  void removeMovies(List<String> movies) {
    for (String movie in movies) {
      movieNow.removeWhere((element) => element.title == movie);
    }
  }
}
