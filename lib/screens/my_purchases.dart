

import 'package:flutter/material.dart';

class MyPurchases extends StatelessWidget {
  static const routeName = "myPurchases";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyPurchases"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            buildCard(),
            buildCard(),
            buildCard(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete),
        onPressed: (){},
      ),
    );
  }

  Card buildCard() {
    return Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.shopping_cart_outlined ,color: Colors.white,),
                backgroundColor: Colors.purple,
              ),
              title: Text("total"),
              subtitle: Text("time"),
            ),
          );
  }
}
