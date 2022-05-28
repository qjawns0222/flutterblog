import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
      debugShowCheckedModeBanner: true,
      home: dice(),
    );
  }
}

class dice extends StatefulWidget {
  const dice({Key? key}) : super(key: key);

  @override
  State<dice> createState() => _diceState();
}

class _diceState extends State<dice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'),
        centerTitle: true,
        backgroundColor: Colors.purple,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body:GestureDetector(

        onTap: (){FocusScope.of(context).unfocus();},
      child:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50),
            ),
            Center(
                child: Image(
              image: AssetImage('image/bluelogo.png'),
              width: 170,
              height: 170,
            )),
            Form(
              child: Theme(
                data: ThemeData(
                    inputDecorationTheme: InputDecorationTheme(
                  labelStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 20.0,
                  ),
                ),
                ),
                child: Container(
                  padding: EdgeInsets.all(40),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Enter"dice"',
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Enter"password"',
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      ElevatedButton(
                          onPressed: (){},
                          child: Icon(Icons.arrow_forward),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.yellow,
                          minimumSize: Size(100.0, 50.0),
                          onPrimary: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    )
    );
  }
}
