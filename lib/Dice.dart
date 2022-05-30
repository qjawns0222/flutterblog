import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
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
                    image: AssetImage('image/bluelogo.png'),
                  ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                      child: Image(
                    image: AssetImage('image/bluelogo.png'),
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
                onPressed: () {},
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
