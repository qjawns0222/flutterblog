import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hi',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: true,
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hellow'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {},
              child: Text('elevated',style: TextStyle(color: Colors.black),),
              style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                  textStyle:TextStyle(
                    backgroundColor: Colors.blue,
                    fontSize: 20.0,

                  ),
              ),
          ),
          TextButton(onPressed: () {}, child: Text('TextButton')),
          OutlinedButton(onPressed: () {}, child: Text('OutlinedButton'))
        ],
      ),
    );
  }
}
