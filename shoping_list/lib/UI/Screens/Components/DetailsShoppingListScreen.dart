import 'package:flutter/material.dart';

class DetailsShopingList extends StatefulWidget{

  final title;

  DetailsShopingList({
    Key key,
    this.title,
  }):super(key:key);

  @override
  _DetailsShopingState createState()=> _DetailsShopingState();
}

class _DetailsShopingState extends State<DetailsShopingList>{

  final primaryColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      title: 'ss',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: primaryColor,
        canvasColor: Colors.black,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color: Colors.white54),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          leading: IconButton(icon: Icon(Icons.keyboard_backspace), onPressed: (){
            Navigator.pop(context);
          }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.mode_edit),
                onPressed: (){
                  //lets add the dialog
                  editDialog();
                }),

            IconButton(
                icon: Icon(Icons.share),
                onPressed: (){
                  print('the share icon was clicked');
                }),

            IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: (){
                  print('the setting icon was clicked');
                })
          ],
        ),
        body: DetailsHomeBody(),
      ),
    );
  }

  Widget DetailsHomeBody(){
    return Text('you are in the details home page');
  }

  Future<void> editDialog() async{
    return showDialog(
        context: context,
        barrierDismissible: false, //user must tab to exit
        builder: (BuildContext context){
          return AlertDialog(
            title: Text('Edit dialog box'),
            content: TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter new edit',
              ),
              validator: (value){
                Scaffold.of(context).showSnackBar(SnackBar(content: Text(value)));
                if(value.isEmpty){
                  return 'Please Enter some text';
                }
              },
            ),
            actions: <Widget>[
              MaterialButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('Cancel'),
                  onPressed: (){
                Navigator.of(context).pop();
              }),
              MaterialButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('Edit'),
                  onPressed: (){
                Navigator.of(context).pop();
              }),
            ],
          );

        }

    );
}
}

