import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listmovies/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LISTMOVIES",
      theme: ThemeData(
        textTheme: GoogleFonts.imprimaTextTheme(),
      ),
      home: const HomePage(),
    );
  }
}
