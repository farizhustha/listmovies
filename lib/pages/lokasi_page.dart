import 'package:flutter/material.dart';
import 'package:listmovies/models/location.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF323c58),
      ),
      body: ListView.builder(
        itemCount: locationList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Navigator.pop(context, locationList[index]),
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey.withOpacity(0.5)))),
              child: Text(locationList[index].location),
            ),
          );
        },
      ),
    );
  }
}
