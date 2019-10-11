import 'package:flutter/material.dart';
import 'package:untitled/categories_screen.dart';
import 'package:untitled/category_meals.dart';
import 'package:untitled/meals_details.dart';
import 'package:untitled/models/Meal.dart';
import 'package:untitled/tabs.dart';
import 'package:untitled/models/Filters.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
      ),
      home: Tabs(),
      routes: {
        'home' : (ctx) => Tabs(),
        'category-meals':(ctx) => category_meals(),
        'meal-detail':(ctx) => Mealdetail(),
        'Filters':(ctx) => Filters(),
      },
    );
  }
}

