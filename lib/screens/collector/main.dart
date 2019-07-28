import 'package:flutter/material.dart';

import 'auth.dart';
import 'capture_deploy.dart';

class CollectorStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CollectorAuth(
        title: "Auth",
      ),
    );
  }
}

class CollectorMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CollectorMain();
}

class _CollectorMain extends State<CollectorMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Main")), body: _body(), drawer: _drawer());
  }

  Widget _drawer() {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Capture/Deploy'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CaptureDeployScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Schedule'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }

  Widget _body() {
    return Container(
      child: Text("Map view goes here"),
    );
  }
}
