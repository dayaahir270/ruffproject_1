import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //action
    print("Hello fluter dev!!");
    return Scaffold(
      appBar: AppBar(
      title: Text('Button'),
      ),
      body: ElevatedButton(onPressed: (){

    }, child: Text("press me"),), // Elevatedbuton
    );
