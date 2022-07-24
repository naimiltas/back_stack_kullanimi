// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'OyunEkrani.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  get onPressed => null;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasaysa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("OYUNA BAŞLA"),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder:(context) => OyunEkrani()));
              },
            )
          ],
        ),
      ),
    );
  }
}
