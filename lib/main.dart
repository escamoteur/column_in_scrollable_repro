import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: new Scaffold(
    resizeToAvoidBottomPadding: false,
    appBar: new AppBar(),
    body: SingleChildScrollView(
          child: new Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Text(
            'Line 1',
          ),
          new Text(
            'Line 2',
          ),
          new TextField(),
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Column(mainAxisSize: MainAxisSize.min,
                children: <Widget>[
          new TextField(),
                  new Text(
                    'Should be at the bottom',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
        ),
      );
  }
}
