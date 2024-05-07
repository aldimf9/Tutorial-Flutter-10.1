import 'package:flutter/material.dart';
import 'package:notion/tutorial_10-2.dart';
import 'package:notion/tutorial_11-1.dart';
void main(){
  runApp(new MaterialApp(
    home: new HalHallo(),
  ));
}
class HalHallo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(left: 20),
          child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome,',
                      style: TextStyle(color: Colors.purple,
                          fontFamily: "Serif",fontSize: 30.0,fontWeight: FontWeight.bold),),
                    Text('1301213053 - Aldi M.F',
                      style: TextStyle(fontFamily: "Serif",
                          fontSize: 15.0,fontWeight: FontWeight.bold),)
                  ],
                ),
                Spacer(),
                Icon(Icons.circle,color: Colors.blue[700],size: 72.0),
              ],
            ),
              Container(
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
                child: Column(
                  children: [
                    Text('Status tes TOEFL Anda:',
                      style: TextStyle(fontFamily: "Serif",
                          color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10.0),
                    Text('LULUS',
                      style: TextStyle(fontFamily: "Serif",
                          color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20.0),
                    Row(
                      children: [
                        Text('Listening \n     80',
                          style: TextStyle(fontFamily: "Serif",
                              color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.bold),),
                        SizedBox(width: 72.0),
                        Text('Structure \n      80',
                          style: TextStyle(fontFamily: "Serif",
                              color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.bold),),
                        SizedBox(width: 72.0),
                        Text('Reading \n    90',
                          style: TextStyle(fontFamily: "Serif",
                              color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
              ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: InkWell(
                child: Text('Go to Tutorial 10-2',style: TextStyle(color: Colors.indigo,fontSize: 26)
                ),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const MyApp10_2()));
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: InkWell(
                child: Text('Go to Tutorial 11-1',style: TextStyle(color: Colors.indigo,fontSize: 26)
                ),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const MyApp11_1()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}