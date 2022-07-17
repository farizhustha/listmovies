import 'package:listmovies/models/bioskop.dart';
import 'package:listmovies/models/movies.dart';

class MoviesLocalNow {
  List<Bioskop> bioskopList;
  List<Movie> value = [];
  final Set<String> _temp = {};
  MoviesLocalNow({required this.bioskopList}) {
    for (var bioskop in bioskopList) {
      for (var movie in bioskop.movieNow) {
        _temp.add(movie.title);
      }
    }
    for (String temp in _temp) {
      for (Movie film in movieList['NowPlaying']!) {
        if (temp == film.title) {
          value.add(film);
        }
      }
    }
  }
}
