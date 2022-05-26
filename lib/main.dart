import 'package:flutter/material.dart';

void main()=>runApp(MyApp());
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hi',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: true,
      home: stf(),
    );
  }
}


class stf extends StatefulWidget {
  const stf({Key? key}) : super(key: key);

  @override
  State<stf> createState() => _stfState();
}

class _stfState extends State<stf> {

  @override
  Widget build(BuildContext context) {
    int a=0;
    return Scaffold(
      appBar: AppBar(
        title: Text('stateful'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                setState(() {
                  a=a+1;
                });
                print(a);
              },
              child: Text('숫자증가'),
          ),
          Text('$a'),
        ],
      ),
    );
  }
}

class prastl extends StatelessWidget {
  prastl({Key? key}) : super(key: key);
  int a=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('stateful'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: (){

                a=a+1;

              print(a);
            },
            child: Text('숫자증가'),
          ),
          Text('$a'),
        ],
      ),
    );
  }
}
