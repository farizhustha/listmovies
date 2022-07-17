import 'package:flutter/material.dart';
import 'package:listmovies/pages/bioskop_page.dart';
import 'package:listmovies/pages/lokasi_page.dart';
import 'package:listmovies/pages/main_page.dart';

class TheaterScreen extends StatefulWidget {
  const TheaterScreen({Key? key}) : super(key: key);

  @override
  State<TheaterScreen> createState() => _TheaterScreenState();
}

class _TheaterScreenState extends State<TheaterScreen> {
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
    return Container(
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
                  )
                ],
              ),
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.theaters_rounded,
                        color: Color(0xFF4670d3),
                      ),
                      const SizedBox(width: 8),
                      const Text("Theaters in "),
                      Text(
                        HomePage.locationNow.location,
                        style: const TextStyle(color: Color(0xFF737373)),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.expand_more_rounded,
                    color: Color(0xFF4670d3),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: HomePage.locationNow.bioskopList.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: Colors.grey.withOpacity(0.5)))),
                  child: ListTile(
                    title: Text(HomePage.locationNow.bioskopList[index].name),
                    leading: const Icon(Icons.camera_outdoor_rounded),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BioskopPage(
                              bioskop: HomePage.locationNow.bioskopList[index]),
                        )),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
