import 'package:flutter/material.dart';
import 'package:travel_guidence_app_asessment1/Travel%20guidence%20app/information.dart';

import 'model/category.dart';
class Places extends StatefulWidget {
  Category category;


  Places(this.category);


  @override
  State<Places> createState() => _PlacesState(category);
}

class _PlacesState extends State<Places> {
  Category category;

  _PlacesState(this.category);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title.toString()),
        backgroundColor: category.color,
      ),
      body: ListView.builder(
        itemCount: category.places!.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.location_on_outlined,color: category.color,size: 25,),
            title: Text(category.places![index].title.toString(),
              style: TextStyle(
                  fontSize: 23,
                  color:category.color),
            ),
            trailing: Icon(Icons.arrow_forward_ios,color: category.color,size: 25,),
            subtitle: Divider(),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PlaceInfo(category.places![index],category.color)));
              // print('Tapped on ${items[index].title}');
            },
          );
        },
      ),
    );
  }
}