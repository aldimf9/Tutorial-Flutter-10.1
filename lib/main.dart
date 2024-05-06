import 'package:flutter/material.dart';
void main(){
  runApp(new MaterialApp(
    home: new HalHallo(),
  ));
}
class HalHallo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: new Container(
          margin: EdgeInsets.only(left: 20),
          child: new Column(
          children: [
            new Row(
              children: [
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Text('Welcome,',
                      style: new TextStyle(color: Colors.purple,
                          fontFamily: "Serif",fontSize: 30.0,fontWeight: FontWeight.bold),),
                    new Text('1301213053 - Aldi M.F',
                      style: new TextStyle(fontFamily: "Serif",
                          fontSize: 15.0,fontWeight: FontWeight.bold),)
                  ],
                ),
                Spacer(),
                new Icon(Icons.circle,color: Colors.blue[700],size: 72.0),
              ],
            ),
              new Container(
                margin: EdgeInsets.all(30),
                padding: EdgeInsets.all(10),
                width: 360.0,
                height: 160.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.deepPurple,
                      Colors.deepPurpleAccent,
                    ]
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: new Column(
                  children: [
                    new Text('Status tes TOEFL Anda:',
                      style: new TextStyle(fontFamily: "Serif",
                          color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10.0),
                    new Text('LULUS',
                      style: new TextStyle(fontFamily: "Serif",
                          color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20.0),
                    new Row(
                      children: [
                        new Text('Listening \n     80',
                          style: new TextStyle(fontFamily: "Serif",
                              color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.bold),),
                        SizedBox(width: 72.0),
                        new Text('Structure \n      80',
                          style: new TextStyle(fontFamily: "Serif",
                              color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.bold),),
                        SizedBox(width: 72.0),
                        new Text('Reading \n    90',
                          style: new TextStyle(fontFamily: "Serif",
                              color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
              ),
            new Text('Riwayat Tes',
              style: new TextStyle(fontFamily: "Serif",fontSize: 35.0,fontWeight: FontWeight.w800),),
          ],
        )
      ),
    );
  }
}