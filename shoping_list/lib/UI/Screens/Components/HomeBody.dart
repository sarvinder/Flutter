import 'package:flutter/material.dart';
import 'HomeMealContainer.dart';
import 'HomeShoppingContainer.dart';

Widget HomeBody (int index){
  if(index == 0){
    return Container(
      child: ShoppingContainer(),
    );
  }
  else{
    return Container(
      child: MealContainer(),
    );
  }


}

