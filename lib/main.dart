import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background();
  }
}

class Background extends StatefulWidget {
  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  Color backgroundColor = Colors.white;

  void changeBackgroundColor(Color color) {
    setState(() {
      backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: Text('Background Color Changer'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('Branco'),
                onPressed: () {
                  changeBackgroundColor(Colors.white);
                },
              ),
              RaisedButton(
                child: Text('Preto'),
                onPressed: () {
                  changeBackgroundColor(Colors.black);
                },
              ),
              RaisedButton(
                child: Text('Azul'),
                onPressed: () {
                  changeBackgroundColor(Colors.blue);
                },
              ),
              RaisedButton(
                child: Text('Vermelho'),
                onPressed: () {
                  changeBackgroundColor(Colors.red);
                },
              ),
              RaisedButton(
                child: Text('Roxo'),
                onPressed: () {
                  changeBackgroundColor(Colors.purple);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
