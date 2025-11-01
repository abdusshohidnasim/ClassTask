import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'MyHomePage.dart';
import 'Provider/addtocard.dart';
import 'Provider/class_task_funtion.dart';

void main() {
  runApp( MultiProvider(

      providers: [
       ChangeNotifierProvider(create: (context)=>ClassTask()),
      ChangeNotifierProvider(create: (context)=>AddtoCard()),
      ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  MyHomePage(),
    );
  }
}
