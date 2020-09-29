import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }
  void _decrecenteCounter() {
    setState(() {

      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Contador"),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Incremente ou decremente',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed:_incrementCounter,
                      child: Text(
                        "Acidicionar",
                        style: TextStyle(
                            fontSize:12.0,
                            fontWeight: FontWeight.w200,
                            fontFamily: "Roboto"),
                      )
                  ),

                  FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed:_decrecenteCounter,
                      child: Text(
                        "Remover",
                        style: TextStyle(
                            fontSize:12.0,
                            fontWeight: FontWeight.w200,
                            fontFamily: "Roboto"),
                      )
                  )
                ]

            )
          ],
        ),
      ),
    );
  }
}
