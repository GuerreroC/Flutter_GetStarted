import 'package:flutter/material.dart';
import './menu_page.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  //SystemChrome.setEnabledSystemUIOverlays([]);
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi primera App',
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        primaryColor: Colors.black,
      ),
      home: MyHomePage(title: 'Mi primera App en Flutter!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
    @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      title: Text(widget.title),
      actions: [
        IconButton(
          icon: Icon( Icons.more_horiz ),
          //onPressed: () {}, //Funcion anonima
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MenuPage()),
            );
          }
                ),
                ],
                ),
                body: Stack(
                  fit: StackFit.expand,
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        'assets/welcome.png',
                        fit: BoxFit.cover,
                        ), 
                    ),
                    Center(
                      //crossAxisAlignment: CrossAxisAlignment.stretch
                      child: Text('¡Welcome!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                          ),
                        ),
                    ),
                  ],
                ),
              );
            }
}
