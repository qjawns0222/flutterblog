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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('hellow'),
              accountEmail: Icon(Icons.send),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/img.jpg'),
              ),
              onDetailsPressed: () {
                print('detail');
              },
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 5),
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.send,
                color: Colors.red,
              ),
              title: Text('리스트'),
              onTap: () {
                print('리스트');
              },
              trailing: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  print('add');
                },
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('hellow'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'elevated',
              style: TextStyle(color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.yellow,
              textStyle: TextStyle(
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
