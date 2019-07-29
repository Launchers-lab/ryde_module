import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'dart:async';

const List<String> tabTypes = <String>[
  "Single",
  "Bulk (near)",
  "Bulk (remote)"
];

class CaptureDeployScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: tabTypes.length,
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Theme.of(context).primaryColor,
                flexibleSpace: new Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TabBar(
                        indicatorColor: Colors.white,
                        isScrollable: true,
                        tabs: tabTypes.map<Widget>((String tabType) {
                          return Container(
                              width: 125,
                              height: 48,
                              child: Tab(text: tabType));
                        }).toList(),
                      )
                    ]),
              ),
              body: TabBarView(
                children: <Widget>[
                  SingleC_D(),
                  Container(
                    child: Center(
                      child: Text('Tab 2'),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text('Tab 3'),
                    ),
                  ),
                ],
              ))),
    );
  }
}

class SingleC_D extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SingleC_D();
}

class _SingleC_D extends State<SingleC_D> {
  String barcode = "";
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new MaterialButton(onPressed: scan, child: new Text("Scan")),
      padding: const EdgeInsets.all(8.0),
    );
  }

  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      setState(() => this.barcode = barcode);
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'The user did not grant the camera permission!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException {
      setState(() => this.barcode =
          'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }
}
