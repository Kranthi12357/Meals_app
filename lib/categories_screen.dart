import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/category_item.dart';
import 'package:untitled/models/dummy-data.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: GridView(
        padding: EdgeInsets.all(10),
        children: DUMMY_CATEGORIES.map((data){
          return category_item(
            data.id,
           data.color,
            data.title,
          );
        }).toList(),
        gridDelegate:
            SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3/2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
      ),
    );
  }
}
