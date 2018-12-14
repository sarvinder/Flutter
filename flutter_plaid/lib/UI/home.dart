import 'package:flutter/material.dart';
import  'Details.dart';

class Home extends StatelessWidget{

  final shopingListItems=[
    "After declaring Pocket bankuptcy ,I made my own minimal read-it-later app ",
    "Figma introduces PDF exports",
    "2018 Design Tools Survey results now available ",
    "spotify wrapped (2018)",
    "Stop showing design options and commit",
    "where do you collect design inspiration for easy access,bowring,etc?",
    "How to find Sketch's secret type features",
    "What are some good conference in 2019?",
    "I re-designed my site based on DN feedback and launched Failory 2.0",
    "where to start when joining a startup as first Designer",
    "After declaring Pocket bankuptcy ,I made my own minimal read-it-later app ",
    "Figma introduces PDF exports",
    "2018 Design Tools Survey results now available ",
    "spotify wrapped (2018)",
    "Stop showing design options and commit",
    "where do you collect design inspiration for easy access,bowring,etc?",
    "How to find Sketch's secret type features",
    "What are some good conference in 2019?",
    "I re-designed my site based on DN feedback and launched Failory 2.0",
    "where to start when joining a startup as first Designer",
    "After declaring Pocket bankuptcy ,I made my own minimal read-it-later app ",
    "Figma introduces PDF exports",
    "2018 Design Tools Survey results now available ",
    "spotify wrapped (2018)",
    "Stop showing design options and commit",
    "where do you collect design inspiration for easy access,bowring,etc?",
    "How to find Sketch's secret type features",
    "What are some good conference in 2019?",
    "I re-designed my site based on DN feedback and launched Failory 2.0",
    "where to start when joining a startup as first Designer",

  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      CustomScrollView(
        primary: true,
        slivers: <Widget>[
          SliverPadding(
            padding:  EdgeInsets.symmetric(horizontal:5.0),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 400.0,
                  mainAxisSpacing: 2.0,
                  crossAxisSpacing: 1.0,
                  childAspectRatio: 1.4,
              ),

              delegate: SliverChildBuilderDelegate(
                (BuildContext context,int index){
                    return
                      Container(
                        color: Colors.lightBlue,
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding:  EdgeInsets.all(15.0),
                            child: Hero(
                              tag: 'title_$index',
                              child: Text(shopingListItems[index],
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              InkWell(
                              highlightColor:Colors.white,
                              splashColor:Colors.white,
                              child: Icon(
                                      Icons.insert_comment,
                                      color: Colors.white30,
                                      ),
                                  onTap: (){
                                      Navigator.push(context,
                                          MaterialPageRoute(builder:
                                              (context)=>
                                                  DetailScreen(title:shopingListItems[index],tag_name:"title_$index")));
                                  },
                                ),


                              Padding(
                                padding:  EdgeInsets.symmetric(horizontal:5.0,vertical: 5.0),
                                child: Text('19',style: TextStyle(color: Colors.white70,),),
                              ),
                            ],
                          ),
                        ],
                    ),
                      );
                },
                childCount: shopingListItems.length,
              ),
            )
          ),
        ],
    );
  }
}