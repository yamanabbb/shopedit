import 'package:flutter/material.dart';

class MyActivity extends StatelessWidget {
  static const routeName = 'my_activity';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Activity"),
      ),
      body: Container(
        child: ListTile(
          leading: Icon(Icons.logout),
          title: Text("buy 3 products"),
          subtitle: Text("10 am"),
        ),
      ),
    );
  }
}
