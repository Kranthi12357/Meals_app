
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/category_meals.dart';
class category_item extends StatelessWidget {
  final Color color;
  final String id;
  final String title;

  category_item(this.id, this.color, this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        select(context);
      },
      splashColor: color,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        child: Center(child:Text(
            title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          gradient: SweepGradient(
            colors: [
              color,
              color.withOpacity(0.5)
            ],
          ),
        ),
      ),
    );
  }

  void select(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('category-meals', arguments: {'id':id,
      'title':title,
    });
  }
}