import 'package:flutter/material.dart';
import 'package:travel_guidence_app_asessment1/Travel%20guidence%20app/model/places.dart';


class Category {
   String? title;
   String? icon;
   Color? color;
   List<Place>? places;

   Category({this.title, this.icon, this.color, this.places});
}