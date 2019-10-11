import 'package:flutter/foundation.dart';
enum Complexity{
  Simple,
  Challenging,
  Hard
}
enum Affordability{
  Affordable,
  Pricey,
  Luxurious,
}

class Meal{
  final String id;
  final List<String> categories;
  final List<String> ingredients;
  final String imageUrl;
  final String title;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isVeg;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
Meal({this.id,this.categories,this.ingredients,this.imageUrl,this.title,this.steps,
this.duration,this.complexity,this.affordability,this.isVeg,this.isGlutenFree,this.isLactoseFree,
this.isVegan});
}