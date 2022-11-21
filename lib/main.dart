import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: HomeCard(),
));
// При нажатии на StatefulWidget и на лампочку можно изменить виджет со статического на динамический(виджет сохранения состояния)
class HomeCard extends StatefulWidget {
  const HomeCard({Key? key}) : super(key: key);

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {

  int rangLevel = 0;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images.jpeg'),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[800],
              ),
              const Text(
                'NAME',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontSize: 18.0
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Ruslan',
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 30.0),
              const Text(
                'RANG',
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                    fontSize: 18.0
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                '$rangLevel',
                style: TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 30.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(width: 10.0),
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
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              rangLevel += 1;
            });
          },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}

