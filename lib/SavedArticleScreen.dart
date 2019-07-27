import 'package:flutter/material.dart';

class SavedArticleScreen extends StatefulWidget {
  @override
  _SavedArticleScreenState createState() => _SavedArticleScreenState();
}

class _SavedArticleScreenState extends State<SavedArticleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Saved Screen"),
        centerTitle: true,
      ),
    );
  }
}