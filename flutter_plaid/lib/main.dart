import 'package:flutter/material.dart';
import 'UI/home.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plaid',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        home: MyHomePage(title: 'PLAID'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black87  ,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: (){

              }),
          IconButton(
              icon: Icon(Icons.filter_list),
              onPressed: (){

              }),
          IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: (){

              }),
        ],
      ),
      body: Home(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
