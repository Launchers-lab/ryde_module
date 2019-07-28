import 'package:flutter/material.dart';

import 'main.dart';

class CollectorAuth extends StatefulWidget {
  CollectorAuth({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _CollectorAuthState createState() => _CollectorAuthState();
}

class _CollectorAuthState extends State<CollectorAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Are You\nA Collector?",
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.display1,
              ),
              SizedBox(height: 36),
              Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                  SizedBox(height: 36),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 64),
              Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 236, // match_parent
                      child: RaisedButton(
                        onPressed: () => {authenticateCollector()},
                        child: Text("Login"),
                      ),
                    ),
                    SizedBox(
                      width: 236, // match_parent
                      child: RaisedButton(
                        onPressed: () => {},
                        child: Text("Exit"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  authenticateCollector() {
    // if collector, proceed
    // if not collector, exit
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CollectorMain()),
    );
  }
}
