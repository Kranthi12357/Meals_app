import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/dummy-data.dart';

class Mealdetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final mealid = ModalRoute
        .of(context)
        .settings
        .arguments as String;
    final SelectedMeal = DUMMY_MEALS.firstWhere((meal) {
      return meal.id == mealid;
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(SelectedMeal.title, textAlign: TextAlign.center,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(SelectedMeal.imageUrl,
                fit: BoxFit.cover,),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text('Ingredients', style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pink,
              ),),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)
              ),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              height: 200,
              width: 300,
              child: ListView.builder(
                itemBuilder: (ctx, index) =>
                    Card(
                      color: Colors.amber,
                      child: Padding(padding: EdgeInsets.all(10),
                          child: Text(SelectedMeal.ingredients[index])),
                    ),
                itemCount: SelectedMeal.ingredients.length,),
            )
            ,
            Container(
              padding: EdgeInsets.all(10),
              child: Text('Steps', style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pink,
              ),),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)
              ),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              height: 200,
              width: 300,
              child: ListView.builder(
                itemBuilder: (ctx, index) =>
                    Column(children: [ListTile(
                      leading: CircleAvatar(child: Text('# ${index + 1}'),),
                      title: Padding(
                          padding: EdgeInsets.all(10), child: Text(SelectedMeal
                          .steps[index])),
                    ),Divider(),],),
                itemCount: SelectedMeal.steps.length,),
            )
          ],
        ),
      ),
    );
  }

}