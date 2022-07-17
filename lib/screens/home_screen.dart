import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listmovies/models/banner.dart';
import 'package:listmovies/pages/lokasi_page.dart';
import 'package:listmovies/pages/main_page.dart';
import 'package:listmovies/pages/movie_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  int _imageIndex = 0;
  final CarouselController _controller = CarouselController();

  locationSelection(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LocationPage(),
        ));

    if (result != null) {
      setState(() {
        HomePage.locationNow = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: const Color(0xFFf3f4f6),
        child: Column(
          children: [
            InkWell(
              onTap: () => locationSelection(context),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.place, color: Color(0xFF4670d3)),
                        const SizedBox(width: 8),
                        Text(HomePage.locationNow.location),
                      ],
                    ),
                    const Icon(Icons.expand_more_rounded,
                        color: Color(0xFF4670d3)),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomStart,
                    children: [
                      CarouselSlider.builder(
                        itemCount: BannerImages.imageList.length,
                        carouselController: _controller,
                        itemBuilder: (context, itemIndex, _) => SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(
                            BannerImages.imageList[itemIndex],
                            fit: BoxFit.cover,
                          ),
                        ),
                        options: CarouselOptions(
                          viewportFraction: 1,
                          aspectRatio: 2.35 / 1,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                            BannerImages.imageList.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => _controller.animateToPage(entry.key),
                            child: Container(
                              width: 8,
                              height: 8,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (_current == entry.key
                                    ? Colors.black
                                    : Colors.white.withOpacity(0.6)),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey.withOpacity(0.5)))),
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'Sedang Tayang',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.raleway(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        CarouselSlider.builder(
                          itemCount:
                              HomePage.locationNow.moviesLocalNow!.value.length,
                          itemBuilder: (context, index, _) {
                            return InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MoviePage(
                                        movie: HomePage.locationNow
                                            .moviesLocalNow!.value[index]),
                                  )),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  HomePage.locationNow.moviesLocalNow!
                                      .value[index].image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                          options: CarouselOptions(
                            height: 300,
                            viewportFraction: 0.5,
                            enlargeCenterPage: true,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _imageIndex = index;
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Text(
                            HomePage.locationNow.moviesLocalNow!
                                .value[_imageIndex].title
                                .toUpperCase(),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
