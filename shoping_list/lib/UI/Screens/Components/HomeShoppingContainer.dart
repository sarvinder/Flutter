import 'package:flutter/material.dart';
import './DetailsShoppingListScreen.dart';

class ShoppingContainer extends StatelessWidget{
    final shopingListItems=[
      "chicken",
      "blueberries",
      "chicken",
      "blueberries",
      "chicken",
      "blueberries",
      "chicken",
      "blueberries",
      "chicken",
      "blueberries",
      "chicken",
      "blueberries",
      "chicken",
      "blueberries",
      "chicken",
      "blueberries",
      "chicken",
      "blueberries",
      "chicken",
      "blueberries",
      "chicken",
      "blueberries",
      "chicken",
      "blueberries",
    ];

    int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*return Container(
        child :ListView(
          children: shopingListItems.map((str) => _buildItem(str)).toList(),
        ),
    );*/
    
    return Container(
      child:
      ListView.builder(
          itemCount : shopingListItems.length*2,
          itemBuilder: (BuildContext context,int index){
            //print("the size of the list is : ${shopingListItems.length}");
            if(index.isEven){
            //  print('its even : ');
              String data = shopingListItems[_counter];
              return ListTile(
                title: Text(shopingListItems[_counter++] ,style: TextStyle(fontSize: 24.0),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> DetailsShopingList(title:data)));
                },
              );
            }
            else{
              return  Divider();
            }
          }),
    );
  }
}


/*
Widget ShoppingContainer(){
  final shopingListItems=[
    "chicken",
    "blueberries",
    "chicken",
    "blueberries",
    "chicken",
    "blueberries",
    "chicken",
    "blueberries",
    "chicken",
    "blueberries",
    "chicken",
    "blueberries",
    "chicken",
    "blueberries",
    "chicken",
    "blueberries",
    "chicken",
    "blueberries",
    "chicken",
    "blueberries",
    "chicken",
    "blueberries",
    "chicken",
    "blueberries",

  ];

  return  ListView(
        children: shopingListItems.map((i){
          print('the i is : $i');
          ListTile(title: Text("tile is here"),);
        }).toList(),
    );
}
*/
