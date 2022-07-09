import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
           centerTitle: true,
          title: Text('Dice App',
              style: TextStyle(fontFamily: ('SourceSans'), letterSpacing: 2.5)),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftImage=3,rightImage=2;
  void button()
  {
    leftImage=Random().nextInt(6)+1;
    rightImage=Random().nextInt(6)+1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SafeArea(
          child: Row(
            children: [
              Expanded(
                  child: TextButton(
                onPressed: () {
                  setState(() {
                    button();
                  });
                },
                child: Image.asset('images/dice$leftImage.png'),
              )),
              Expanded(
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          button();
                        });
                      },
                      child: Image.asset('images/dice$rightImage.png'))),
            ],
          ),
        ),
      ),
    );
  }
}
