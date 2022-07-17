import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listmovies/models/location.dart';
import 'package:listmovies/screens/home_screen.dart';
import 'package:listmovies/screens/now_playing_screen.dart';
import 'package:listmovies/screens/theater_screen.dart';
import 'package:listmovies/screens/upcoming_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static Location locationNow = locationList[1];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexScreen = 0;

  List pages = [
    const HomeScreen(),
    const NowPlayingScreen(),
    const UpComingScreen(),
    const TheaterScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "LISTMOVIES",
          style: GoogleFonts.goldman(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF323c58),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.slow_motion_video),
            label: "Now Playing",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_creation_outlined),
            label: "UpComing",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.theaters_outlined),
            label: "Theater",
          ),
        ],
        onTap: (index) {
          setState(() {
            indexScreen = index;
          });
        },
        currentIndex: indexScreen,
        selectedItemColor: const Color(0xFF4670d3),
        unselectedItemColor: const Color(0xFF737373),
      ),
      body: pages[indexScreen],
    );
  }
}
