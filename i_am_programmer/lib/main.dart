import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'I Am Programmer',
      home: Scaffold(
        appBar: AppBar(
          title: Text('I Am Programmer'),
          centerTitle: true,
          backgroundColor: Colors.grey[400],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/i_am_programmer.png'),
          )
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
