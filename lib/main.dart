import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart'; 
import 'HomeFeedScreen.dart' as HomeFeedScreen;
import 'CategoryScreen.dart' as CategoriesScreen;
import 'SavedArticleScreen.dart' as SavedArticleScreen;

void main() => runApp(new MaterialApp(home: new HomeTab()));


class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController controller;
    controller = new TabController(vsync: this, length: 3);
    return Scaffold(
      appBar: new AppBar(
        title: new Text("News API"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
       bottomNavigationBar: new Material( 
            color: Colors.red[700],
            child: new TabBar(controller: controller,tabs: <Tab>[ 
              new Tab(icon: new Icon(Icons.view_module,size: 30.0)),
              new Tab(icon: new Icon(Icons.view_headline,size: 30.0)),
              new Tab(icon: new Icon(Icons.explore,size: 30.0)),
             
        ]),

       ),
        body: new TabBarView(controller: controller,children: <Widget>[ 
      
        new HomeFeedScreen.HomeFeedScreen(),
        new CategoriesScreen.CategoriesScreen(),
        new SavedArticleScreen.SavedArticleScreen()

       
      ],)
    );
  }
}


