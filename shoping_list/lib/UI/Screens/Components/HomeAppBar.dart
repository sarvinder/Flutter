import 'package:flutter/material.dart';

Widget HomeAppBar (){
  return AppBar(
    title: Text('Shopping List'),
    actions: <Widget>[
      IconButton(icon: Icon(Icons.filter_list), onPressed: (){

      }),
      IconButton(icon: Icon(Icons.more_horiz), onPressed: (){

      })
    ],
  );
}