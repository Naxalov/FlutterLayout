import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Container(
        color: Colors.teal,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            MyBox(),
            MyBox(),
            MyBox(),
//            Square(),
          ],
        ),
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  final color;

  const MyBox({this.color=Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.grey,
      padding: EdgeInsets.all(5),
      child: Icon(
        Icons.apps,
        size: 50,
        color: color,
      ),
    );
  }
}

class Square extends StatelessWidget {
  final color;
  final size;

  Square({this.color = Colors.black, this.size = 50.0});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      color: color,
      child: Icon(Icons.star, color: Colors.white, size: size,),
    );
  }
}

