import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  Random _rng = new Random();

  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _boarderRadius = BorderRadius.circular(8.0);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _boarderRadius,
            color: _color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: (){
          setState(() {
            _width = _rng.nextInt(300).toDouble();
            _height = _rng.nextInt(300).toDouble();
            _color = Color.fromRGBO(
              _rng.nextInt(255), 
              _rng.nextInt(255), 
              _rng.nextInt(255), 
              _rng.nextDouble()
            );
            _boarderRadius = BorderRadius.circular(_rng.nextInt(100).toDouble());
          });
        }
      ),
    );
  }
}