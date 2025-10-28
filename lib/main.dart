import 'package:flutter/material.dart';
import 'package:x_o/core/app_route.dart';
import 'package:x_o/home/home_screen.dart';
import 'package:x_o/home/player_screen.dart';

void main(){

  runApp(MyApp());



}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      initialRoute:AppRoute.homeScreen ,
      routes: {
        AppRoute.homeScreen:(context)=>HomeScreen(),
        AppRoute.playerScreen:(context)=>PlayerScreen()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
