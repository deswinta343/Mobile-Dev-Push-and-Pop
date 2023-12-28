import 'package:flutter/material.dart';

class wash extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("cuci mobil", style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Icon(Icons.wash,size: 90.0,)
          ],
        ),
      ),
    );
  }
}
