import 'package:flutter/material.dart';

import './ex1_text/ex1_text.dart';
import './ex2_web_images/ex2_web_images.dart';
import './ex3_interactions/ex3_interactions.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: new MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> linkTexts = [
      'Textbeispiel',
      'Bilderbeispiel',
      'Interaktionen'
    ];

    final List<MaterialPageRoute> linkRoutes = [
      MaterialPageRoute(builder: (context) => Ex1_Text()),
      MaterialPageRoute(builder: (context) => Ex2_Web_Images()),
      MaterialPageRoute(builder: (context) => Ex3_Interactions())
    ];

    final List<Widget> links = [];

    for (int i = 0, len = linkTexts.length; i < len; i++) {
      links.add(GestureDetector(
          onTap: () {
            Navigator.push(context, linkRoutes[i]);
          },
          child: Card(
              elevation: 4.0,
              child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(linkTexts[i],
                      style: TextStyle(
                          color: Colors.blueAccent, fontSize: 16.0))))));
    }

    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
          centerTitle: true,
          textTheme:
              TextTheme(title: TextStyle(color: Colors.white, fontSize: 20.0)),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          children: links,
        ));
  }
}
