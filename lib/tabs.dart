import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/categories_screen.dart';
import 'package:untitled/favourites.dart';
class Tabs extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TabState();
  }

}
class TabState extends State<Tabs>{
  @override
   final List<Map<String,Object>> pages =[
    {
      'page':Categories(),
      'title':'Category'
    }
    ,
    {
      'page':Favourites(),
      'title':'Favourites'
    }
  ];
  int pageindex = 0;
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(pages[pageindex]['title']),
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                height: 120,
                width: double.infinity,
                padding: EdgeInsets.all(20),
                alignment: Alignment.centerLeft,
                child: Text('cooking',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.grey),),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: Icon(Icons.restaurant),
                title: Text('meals',style: TextStyle(fontSize: 24),),
                onTap: (){
                  Navigator.of(context).pushReplacementNamed('home');
                },
              ),ListTile(
                leading: Icon(Icons.filter),
                title: Text('filters',style: TextStyle(fontSize: 24),),
                onTap: (){
                  Navigator.of(context).pushReplacementNamed('Filters');
                },
              ),
            ],
          ),
        ),
        body: pages[pageindex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectedtab,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        backgroundColor: Colors.deepOrangeAccent,
        currentIndex: pageindex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('categories'
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('favourite')
          )
        ],
      ),
      );
  }
void selectedtab(int index){
  setState(() {
    pageindex = index;
  });
}
}