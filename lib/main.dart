import 'package:flutter/material.dart';
import 'package:flutterblog/Dice.dart';

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
  TextEditingController id=TextEditingController();
  TextEditingController password=TextEditingController();
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
                        controller: id,
                        decoration: InputDecoration(
                          labelText: 'Enter"dice"',
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      TextField(
                        obscureText: true,
                        controller: password,
                        decoration: InputDecoration(
                          labelText: 'Enter"password"',

                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      ElevatedButton(
                          onPressed: (){
                            if (id.text == 'dice' &&
                                password.text == '1234') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dice()),
                              );
                            } else if (id.text != 'dice' &&
                                password.text == '1234') {
                              showSnackBar(context,"아이디를 확인해주세요");
                            } else if (id.text == 'dice' &&
                                password.text != '1234') {
                              showSnackBar(context,"비밀번호를 확인해주세요");
                            }else{
                              showSnackBar(context,"아이디와 비밀번호를 확인해주세요");
                            }
                          },
                          child: Icon(Icons.arrow_forward),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.yellow,
                          minimumSize: Size(100.0, 50.0),
                          onPrimary: Colors.blue,
                        ),
                      ),
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
void showSnackBar(BuildContext context,String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      text,
      textAlign: TextAlign.center,
    ),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}