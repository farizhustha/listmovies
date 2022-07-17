import 'package:flutter/material.dart';
import 'package:listmovies/models/movies.dart';
import 'package:listmovies/pages/movie_page.dart';

class NowPlayingScreen extends StatelessWidget {
  const NowPlayingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFf3f4f6),
      padding: const EdgeInsets.all(8),
      child: GridView.count(
          childAspectRatio: 2 / 3.5,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          crossAxisCount: 2,
          children: movieList['NowPlaying']!
              .map(
                (nowPlaying) => InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MoviePage(movie: nowPlaying),
                      )),
                  child: Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Image.network(
                                nowPlaying.image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            nowPlaying.title,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .toList()),
    );
  }
}
