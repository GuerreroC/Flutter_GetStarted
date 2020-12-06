import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
  
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Menu"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                Expanded(child: Text('Activar sonido',
                style: TextStyle(fontSize: 20),)
                          ),
                Switch(
                  value: true,
                  onChanged: (value) {},
                )
                ]
              ),
              Row(
                children: [
                Expanded(child: Text('Habilitar el uso de la camara',
                  style: TextStyle(fontSize: 20),)
                ),
                Switch(
                  value: true,
                  onChanged: (value) {},
                )
                ]
              )
            ],
          ),
        ),
      ),
    );
  }
}