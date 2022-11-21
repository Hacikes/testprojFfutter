import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: HomeCard(),
));

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  <Widget>[
              Text(
                'NAME',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontSize: 20.0
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Ruslan',
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'AGE',
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                    fontSize: 20.0
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '22',
                style: TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'test@mail.ru',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text('Home ID Cards'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),
    );
  }
}

