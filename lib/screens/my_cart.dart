

import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  static const routeName = "my_cart";

  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  bool _isChecked = false;

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
              trailing: Checkbox(
                value: _isChecked,
                onChanged: (value){
                  setState(() {
                    _isChecked=value;
                  });
                },
              ),
            ),
          );
  }
}
