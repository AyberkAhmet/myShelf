import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List a = [Colors.red, Colors.blue, Colors.black, Colors.pink, Colors.green];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image(
          image: AssetImage("assets/shelf.png"),
        ),
        Positioned(
            left: 80.0,
            top: 100.0,
            child: Container(
              height: 200.0,
              width: 300.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      constraints: BoxConstraints.tightForFinite(height: 10.0,width: 50.0),
                      height: 10.0,
                      width: 50.0,
                      color: a[index],
                    );
                  }),
            ),)
      ],
    );
  }
}
