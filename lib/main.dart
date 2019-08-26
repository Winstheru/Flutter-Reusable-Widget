import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reusable_widget/screen/home.dart';
import 'package:reusable_widget/screen/page_two.dart';


void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_){
    runApp(MyApp());
  });
} 

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Reusable Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/home' : (BuildContext context) => HomePage(),
        '/screen1' : (BuildContext context) => SecondPage(),
      },
    );
  }
}

