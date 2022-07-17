import 'package:flutter/material.dart';
import 'package:listmovies/models/bioskop.dart';
import 'package:listmovies/pages/movie_page.dart';

class BioskopPage extends StatelessWidget {
  final Bioskop bioskop;

  const BioskopPage({Key? key, required this.bioskop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bioskop.name),
        backgroundColor: const Color(0xFF323c58),
      ),
      body: Container(
        color: const Color(0xFFf3f4f6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bioskop.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Icon(Icons.place_outlined),
                      const SizedBox(width: 8),
                      Expanded(child: Text(bioskop.address)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.phone),
                      const SizedBox(width: 8),
                      Expanded(child: Text(bioskop.telp)),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              color: Color(0xFFf3f4f6),
              thickness: 12,
              height: 12,
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(
                  left: 4,
                  right: 4,
                  bottom: 12,
                ),
                itemCount: bioskop.movieNow.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MoviePage(movie: bioskop.movieNow[index]),
                        )),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                bioskop.movieNow[index].image,
                                fit: BoxFit.cover,
                              ),
                            )),
                            const SizedBox(width: 8),
                            Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      bioskop.movieNow[index].title
                                          .toUpperCase(),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Genre${'\t' * 10}',
                                          style: const TextStyle(
                                            color: Color(0xFF737373),
                                            fontSize: 13,
                                          ),
                                        ),
                                        Expanded(
                                            child: Text(
                                          bioskop.movieNow[index].genre,
                                          style: const TextStyle(fontSize: 13),
                                        ))
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Durasi${'\t' * 9}',
                                          style: const TextStyle(
                                            color: Color(0xFF737373),
                                            fontSize: 13,
                                          ),
                                        ),
                                        Expanded(
                                            child: Text(
                                          bioskop.movieNow[index].duration,
                                          style: const TextStyle(fontSize: 13),
                                        ))
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Sutradara${'\t' * 3}',
                                          style: const TextStyle(
                                            color: Color(0xFF737373),
                                            fontSize: 13,
                                          ),
                                        ),
                                        Expanded(
                                            child: Text(
                                          bioskop.movieNow[index].director,
                                          style: const TextStyle(fontSize: 13),
                                        ))
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Penulis${'\t' * 8}',
                                          style: const TextStyle(
                                            color: Color(0xFF737373),
                                            fontSize: 13,
                                          ),
                                        ),
                                        Expanded(
                                            child: Text(
                                          bioskop.movieNow[index].writer,
                                          style: const TextStyle(fontSize: 13),
                                        ))
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
