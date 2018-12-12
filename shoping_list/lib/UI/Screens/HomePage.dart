import 'package:flutter/material.dart';
import 'Components/HomeAppBar.dart';
import 'Components/HomeBody.dart';

class HomePage extends StatefulWidget{
  HomePage({Key key,}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();

}
class _HomePageState extends State<HomePage>{

  static const primaryColor = Colors.white;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'ShoppingListPlusPlus',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: primaryColor,
        canvasColor: Colors.black,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color: Colors.white54),
        ),
      ),
      home: Scaffold(
        appBar: HomeAppBar(), 
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            items: [
          BottomNavigationBarItem(
            title: Text('Shopping List'),
            icon: Icon(Icons.shopping_cart),
          ),
          BottomNavigationBarItem(
            title: Text('Meals'),
            icon: Icon(Icons.restaurant_menu)
          ),
        ],
          onTap: (i){
              if (i ==0 ){
                print('the index is 0');
              }
              else{
                print('The index is 1');
              }
              setState((){
                _currentIndex = i;
              });
      },
        ),

        body: HomeBody(_currentIndex),
      ),
    );
  }

}