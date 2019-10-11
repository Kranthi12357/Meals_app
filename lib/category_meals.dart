import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/dummy-data.dart';
import 'package:untitled/Meal_item.dart';
class category_meals extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final title = arg['title'];
    final id = arg['id'];
    final mealslist = DUMMY_MEALS.where((meals){
      return meals.categories.contains(id);
    }).toList();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body:ListView.builder(itemBuilder:
      (context,index){
        return Mealitem(
          mealslist[index].id,
          mealslist[index].title,
          mealslist[index].imageUrl,
          mealslist[index].duration,
          mealslist[index].complexity,
          mealslist[index].affordability,
        );
      },
        itemCount: mealslist.length,
      ),
    );
  }


}