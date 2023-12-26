import 'package:flutter/material.dart';

import 'model/places.dart';

class PlaceInfo extends StatefulWidget {
  Place place;
  Color? color;

  PlaceInfo(this.place, this.color);

  @override
  State<PlaceInfo> createState() => _PlaceInfoState(place,color);
}

class _PlaceInfoState extends State<PlaceInfo> {
  Place place;

Color? color;
  _PlaceInfoState(this.place,this.color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
      backgroundColor: color,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Displaying an image
          Image.network(
              place.image
          ),
          SizedBox(height: 20.0), // Add some spacing
          Align(
            alignment:Alignment.centerLeft,
            child: Text(
              'Info',
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
          // Displaying information

          SizedBox(height: 10.0), // Add some spacing

          Text(
            place.desc,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}