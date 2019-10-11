import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/Meal.dart';

class Mealitem extends StatelessWidget{
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  Mealitem(this.id,this.title,this.imageUrl,this.duration,this.complexity,this.affordability);
  String get price {
    switch (affordability) {
      case Affordability.Affordable:
        return "Affordable";
        break;
      case Affordability.Luxurious :
        return "Luxurious";
        break;
      case Affordability.Pricey :
        return "Pricey";
        break;
    }
  }
    String get Complex {
      switch (complexity) {
        case Complexity.Simple:
          return "simple";
          break;

        case Complexity.Challenging:
          return "Challenging";

          break;
        case Complexity.Hard:
          return "Hard";
          break;
      }
    }
    
    void mealdetail(BuildContext context){
    Navigator.of(context).pushNamed("meal-detail",arguments: id);
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: (){
        mealdetail(context);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius:BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15)
                  ),
                  child: Image.network(imageUrl,fit: BoxFit.cover,height: 250,width: double.infinity,),
                ),
                Positioned(
                  left: 2,
                  child: Container(
                    color: Colors.black54,
                    width: 300,
                    padding: EdgeInsets.all(10),
                    child: Text(title,style: TextStyle(fontSize: 24,color: Colors.white),
                    softWrap: true,
                    overflow: TextOverflow.fade,),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.schedule),
                      SizedBox(width: 6,),
                      Text('${duration} min'),
                    ],
                  ) ,
                  Row(
                    children: <Widget>[
                      Icon(Icons.work),
                      SizedBox(width: 6,),
                      Text(Complex),

                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.monetization_on),
                      SizedBox(width: 6,),
                      Text(price)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}