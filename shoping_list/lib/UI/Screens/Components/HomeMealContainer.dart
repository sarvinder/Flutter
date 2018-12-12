import 'package:flutter/material.dart';
import 'DetailsMealsListScreen.dart';


class MealContainer extends StatelessWidget{
  final MealListItems=[
    "Grill and BBQ",
    "Teriyaki Chicken",
    "Soy Sauce",
    "Dry sherry",
    "Vegetable Oil",
    "Brown Sugar",
    "Fresh Ginger",
    "boneless chicken breast halves",
    "Optional garnish",
    "Sesame seeds",
    "Scallions",
    "Grill and BBQ",
    "Teriyaki Chicken",
    "Soy Sauce",
    "Dry sherry",
    "Vegetable Oil",
    "Brown Sugar",
    "Fresh Ginger",
    "boneless chicken breast halves",
    "Optional garnish",
    "Sesame seeds",
    "Scallions",
    "Grill and BBQ",
    "Teriyaki Chicken",
    "Soy Sauce",
    "Dry sherry",
    "Vegetable Oil",
    "Brown Sugar",
    "Fresh Ginger",
    "boneless chicken breast halves",
    "Optional garnish",
    "Sesame seeds",
    "Scallions","Grill and BBQ",
    "Teriyaki Chicken",
    "Soy Sauce",
    "Dry sherry",
    "Vegetable Oil",
    "Brown Sugar",
    "Fresh Ginger",
    "boneless chicken breast halves",
    "Optional garnish",
    "Sesame seeds",
    "Scallions",
  ];

  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      child:
      ListView.builder(
          itemCount : MealListItems.length*2,
          itemBuilder: (BuildContext context,int index){
            //print("the size of the list is : ${shopingListItems.length}");
            final data = MealListItems[_counter];
            if(index.isEven){
              //  print('its even : ');

              return ListTile(
                title: Text(MealListItems[_counter++] ,style: TextStyle(fontSize: 24.0),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> DetailsMealsList(title:data)));

                },
              );
            }
            else{
              return  Divider();
            }


          }),
    );}
}