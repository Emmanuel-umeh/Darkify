import 'package:darkify/widgets/HomePage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Darkify',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        canvasColor: Colors.black38
        // primarySwatch: Colors.black12
        
        
      ),
      
      home: HomePage(),
    );
  }
}



