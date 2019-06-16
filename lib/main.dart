

import 'package:flutter/material.dart';
import 'package:flutter_explor/SessionEditScreen.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Exploration';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData.dark(),
      home: SessionListRoute(),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class SessionListRoute extends StatelessWidget {
  SessionListRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a session'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            tooltip: 'Create a new session',
            onPressed: () {
              // Implement navigation to shopping cart page here...
              print('clicked on create new session');
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) {
                  return SessionEditScreen();
                })
              );
            },
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            SessionListItem('first title'),
            Text('session 2'),
            SessionListItem('... last title ?')
          ],
        ),
      ),
    );
  }
}

class SessionListItem extends StatelessWidget {
  String _title;
  SessionListItem(this._title) : super();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_title),
      subtitle: Text('a subtitle'),
    );
  }
}
