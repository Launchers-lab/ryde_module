import 'package:flutter/material.dart';

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
                            width: 125, height: 48, child: Tab(text: tabType));
                      }).toList(),
                    )
                  ]),
            ),
          )),
    );
  }
}
