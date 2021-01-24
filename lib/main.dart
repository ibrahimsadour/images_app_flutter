import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text('تطابق صورة'),
        backgroundColor: Colors.indigo[800],
      ),
      body: ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImageNubmer = 2;
  int rightImageNubmer = 1;

  void changimage() {
    leftImageNubmer = Random().nextInt(8) + 1; //0 -> 8
    rightImageNubmer = Random().nextInt(8) + 1; //0 -> 8
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNubmer == rightImageNubmer
              ? 'مبروك لقد نجحت'
              : 'حاول مرة اخرى',
          style: TextStyle(
            fontSize: 43.0,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      changimage();
                    });
                  },
                  child: Image.asset('images/image-$leftImageNubmer.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      changimage();
                    });
                  },
                  child: Image.asset('images/image-$rightImageNubmer.png'),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
