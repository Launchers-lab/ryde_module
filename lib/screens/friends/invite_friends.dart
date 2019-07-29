import 'package:flutter/material.dart';

class InviteFriendScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InviteFriendScreen();
}

class _InviteFriendScreen extends State<InviteFriendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Invite Friends!"),
      ),
      body: ListView(
        children: <Widget>[
          _friendInviteItem(),
          _friendInviteItem(),
          _friendInviteItem(),
          _friendInviteItem(),
        ],
      ),
    );
  }

  Widget _friendInviteItem() {
    return ListTile(
        contentPadding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
        leading: CircleAvatar(),
        title: Text("Name"),
        subtitle: Text("desc"),
        trailing: SizedBox(
          width: 150,
          child: Row(
            children: <Widget>[
              RaisedButton(
                child: Text("Add"),
                onPressed: () => {},
              ),
              IconButton(
                icon: Icon(Icons.clear),
                onPressed: () => {},
              )
            ],
          ),
        ));
  }
}
