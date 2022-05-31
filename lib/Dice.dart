import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);


  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int left=1;
  int right=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("주사위 게임"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Expanded(
                    flex: 2,
                      child: Image(
                    image: AssetImage('image/dice$left.png'),
                  ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                      child: Image(
                    image: AssetImage('image/dice$right.png'),
                  ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ButtonTheme(

              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    left=Random().nextInt(6)+1;
                    right=Random().nextInt(6)+1;
                  });
                  Fluttertoast.showToast(
                      msg: "Left Dice:{$left}, Right Dice:{$right}",
                      backgroundColor: Colors.purpleAccent,
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      textColor: Colors.black
                  );
                },
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 50.0,
                ),
                style: ElevatedButton.styleFrom(primary: Colors.purpleAccent),

              ),
            )

          ],
        ),

    );
  }
}
