import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                height: 200,
                color: Colors.teal.shade300,
              ),
              MainContent(),
            ],
          ),
        ),
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PhotoSection(),
        Names(),
        PhoneCard(),
        EmailCard(),
      ],
    );
  }
}

class Names extends StatelessWidget {
  const Names({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Stefan Karasmilov',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'FLUTTER DEVELOPER',
          style: TextStyle(
              fontFamily: 'Source-Sans-Pro',
              fontSize: 20,
              color: Colors.teal.shade100,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
          width: 150,
          child: Divider(
            color: Colors.white54,
          ),
        ),
      ],
    );
  }
}

class EmailCard extends StatelessWidget {
  const EmailCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 25,
      ),
      child: ListTile(
        leading: Icon(
          Icons.email,
          color: Colors.teal,
        ),
        title: Text(
          'info@info.com',
          style: TextStyle(
            color: Colors.teal.shade900,
            fontFamily: 'Source-Sans-Pro',
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class PhoneCard extends StatelessWidget {
  const PhoneCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 25,
      ),
      child: ListTile(
        leading: Icon(
          Icons.phone,
          color: Colors.teal,
        ),
        title: Text(
          '+44 123 456 789',
          style: TextStyle(
            color: Colors.teal.shade900,
            fontFamily: 'Source-Sans-Pro',
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class PhotoSection extends StatelessWidget {
  const PhotoSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: Icon(Icons.phone),
          backgroundColor: Colors.teal.shade900,
          onPressed: () {},
        ),
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
            'https://scontent.fbio1-1.fna.fbcdn.net/v/t31.0-8/19702580_1087545041390447_4872628317265901498_o.jpg?_nc_cat=110&ccb=2&_nc_sid=174925&_nc_ohc=ZJpQ9VD9tCEAX-wg2Hz&_nc_ht=scontent.fbio1-1.fna&oh=cd119fdc205df2517e41be930827f6f5&oe=603C2DA1',
          ),
        ),
        FloatingActionButton(
          child: Icon(Icons.email),
          backgroundColor: Colors.teal.shade900,
          onPressed: () {},
        ),
      ],
    );
  }
}
