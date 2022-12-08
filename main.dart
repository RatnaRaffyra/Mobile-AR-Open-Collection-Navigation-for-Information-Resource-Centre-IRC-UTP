 import 'package:flutter/material.dart';
import 'package:project/screen/home_screen.dart';
// ignore: unused_import


void main() {
runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // ignore: deprecated_member_use
        accentColor: const Color.fromRGBO(153, 205, 205, 1),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      
      home: const HomeScreen(),
      routes: {
        "/homeScreen":(_)=>const HomeScreen()
      },
    );
  }
}