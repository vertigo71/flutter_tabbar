import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter tab app"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: "first of all",),
              Tab(text: "second of all",),
              Tab(text: "third of all",),
            ],
          ),
        ),
        body: TabBarView (
          children: <Widget>[
            Text("first",),
            Text("second",),
            Text("third",),
          ],
        ),
      ),
    );
  }
}

