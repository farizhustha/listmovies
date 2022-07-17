import 'package:flutter/material.dart';
import 'package:listmovies/models/movies.dart';
import 'package:url_launcher/url_launcher.dart';

class MoviePage extends StatelessWidget {
  final Movie movie;

  const MoviePage({Key? key, required this.movie}) : super(key: key);

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF323c58),
      ),
      body: Container(
        color: const Color(0xFFf3f4f6),
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey.withOpacity(0.5)))),
                    child: Row(
                      children: [
                        const Icon(Icons.local_play_rounded, size: 40),
                        Container(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                movie.title,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                movie.genre,
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                movie.image,
                                fit: BoxFit.cover,
                              ),
                            )),
                            Expanded(
                                // flex: 2,
                                child: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(Icons.av_timer_rounded),
                                      const SizedBox(width: 4),
                                      Text(movie.duration),
                                    ],
                                  ),
                                  const SizedBox(height: 65),
                                  ElevatedButton(
                                    onPressed: () {
                                      _launchInBrowser(
                                          Uri.parse(movie.trailer));
                                    },
                                    child: const Text('TRAILER'),
                                  ),
                                ],
                              ),
                            )),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Text(movie.synopsis),
                        const SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Producer:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(movie.producer),
                            const SizedBox(height: 8),
                            const Text(
                              'Director:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(movie.director),
                            const SizedBox(height: 8),
                            const Text(
                              'Writer:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(movie.writer),
                            const SizedBox(height: 8),
                            const Text(
                              'Cast:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(movie.casts),
                            const SizedBox(height: 8),
                            const Text(
                              'Distributor:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(movie.production),
                            const SizedBox(height: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
