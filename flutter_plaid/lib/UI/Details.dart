import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget{

  final title;
  final tag_name;
  DetailScreen({
    Key key,
    this.title,
    this.tag_name,
  }):super(key:key);

  @override
  _MyDetailScreenState createState() => _MyDetailScreenState();
}

class _MyDetailScreenState extends State<DetailScreen>{
  ScrollController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = ScrollController();
  }
     @override
     void dispose(){
     //Dispose everything before calling super.dispose()
      _controller.dispose();
       super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    String heading = widget.title;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plaid',
      home: Scaffold(
        body: CustomScrollView(
          controller: MyScrollController(),
            slivers: <Widget>[
                  SliverAppBar(
                      primary: true,
                      expandedHeight: 200.0,
                      floating: false,
                      pinned: true,
                      leading: IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: (){
                        Navigator.pop(context);
                        }),
                      backgroundColor: Colors.lightBlue,
                      flexibleSpace: FlexibleSpaceBar(
                        centerTitle: true,
                        collapseMode: CollapseMode.none,
                        title:
                             MyTextView(widget.title,)),
                  ),
                SliverList(
                    delegate: SliverChildBuilderDelegate((context,index){
                  return Text('context is this');
                }))
                ]
              ),

        floatingActionButton: Builder(
            builder: ( (BuildContext context) {
                return FloatingActionButton(
                    child: Icon(Icons.chrome_reader_mode),
                    onPressed: () {
                        Scaffold
                      .of(context)
                      .showSnackBar(new SnackBar(content: new Text('will be using to launch url..')));
                });
        })
        ),

      ),
    );
  }



  Widget MyTextView(String data){

    return Container(
      width: 300.0,
      height: 60.0,
      margin: EdgeInsets.only(top: 35.0,bottom: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Hero(
          tag: widget.tag_name,
          child: Text(data,
            textScaleFactor: .8,
            style: TextStyle(
          color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          softWrap: true,
          textAlign: TextAlign.center,),
        ),
      ),
    );
  }
}

class MyScrollController extends ScrollController{

  @override
  ScrollPosition createScrollPosition(ScrollPhysics physics, ScrollContext context, ScrollPosition oldPosition) {
    // TODO: implement createScrollPosition
    print('the scroll physics is : $initialScrollOffset');
    context.setCanDrag(true);
     return ScrollPositionWithSingleContext(
      physics: physics,
      context: context,
      initialPixels: initialScrollOffset,
      keepScrollOffset: keepScrollOffset,
      oldPosition: oldPosition,
      debugLabel: debugLabel,
    );;
  }
}