import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(7.5),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://img-cdn.hipertextual.com/files/2018/11/Stan-Lee.jpg?strip=all&lossy=1&quality=70&resize=740%2C490&ssl=1'),
              // radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
              
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://img-cdn.hipertextual.com/files/2018/11/Stan-Lee.jpg?strip=all&lossy=1&quality=70&resize=740%2C490&ssl=1'),
          placeholder: AssetImage('assets/original.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}