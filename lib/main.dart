import 'package:flutter/material.dart';

void main() => runApp(MyApp());
// in flutter there have a 2 kind of widget one is stateless and another is statefull
// today we learn stateless widget

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[200],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/baki.jpg'),
              ),
              Text(
                'Md. Bakibillah',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text('Software Engineer',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.teal[50],
                  letterSpacing: 2.5,
                  fontWeight:  FontWeight.bold,
                    fontFamily: 'Source Sans Pro',

                ),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.teal.shade700,
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('+8801930168088',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                        color: Colors.teal.shade900,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  print('email');
                },
                child: Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: 25.0, vertical:10.0 ),
                  child: ListTile(
                    leading: Icon(Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text('mb.billah8@gmail.com',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20.0,
                        fontFamily: 'Source Sans Pro'
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
