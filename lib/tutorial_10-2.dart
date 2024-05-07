import 'package:flutter/material.dart';
import 'main.dart';

void main(){
  runApp(const MyApp10_2());
}

class MyApp10_2 extends StatelessWidget{
  const MyApp10_2({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'ABP Minggu 10',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: MyHomePage(title: 'ABP Minggu 10'),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHomePage extends StatefulWidget{
  MyHomePage({Key? key, required this.title}) : super(key:key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  int selected = 0;
  PageController pc = PageController(initialPage: 0);
  final data = const[
    {"tgl": "02/03/2022","nilai":"150"},
    {"tgl": "01/02/2022","nilai":"140"},
    {"tgl": "12/01/2022","nilai":"170"},
    {"tgl": "11/12/2021","nilai":"110"},
    {"tgl": "10/11/2021","nilai":"180"},
    {"tgl": "09/10/2021","nilai":"190"},
    {"tgl": "08/09/2021","nilai":"160"},
    {"tgl": "07/08/2021","nilai":"155"},
    {"tgl": "06/07/2021","nilai":"145"},
    {"tgl": "05/06/2021","nilai":"140"}
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Text('Riwayat Tes',  style: TextStyle(fontFamily: "Serif",fontSize: 35.0,fontWeight: FontWeight.w800)),
            Container(
              height: 300,
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context,index){
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Tanggal tes:\nNilai:',
                            style: TextStyle(color: Colors.blue, fontSize: 10),),
                          Text(data[index]["tgl"]! + '\n' + data[index]["nilai"]!,
                            style: TextStyle(color: Colors.blue ,fontSize: 10),)
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            InkWell(
                child: Text("Home",style: TextStyle(color: Colors.black,fontSize: 12),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => HalHallo()
                  ));
                },
            ),
          ]
        ),

      ),
    );
  }
}