import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/list_tile.dart';
import '../widgets/main_drawer.dart';
import '../widgets/list_tile.dart';
import '../widgets/main_drawer.dart';

class Settings extends StatelessWidget {

  static const routeName = 'settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings"),),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 20,),
            Text("GENERAL SETTINGS" , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
            ListItem()
          ],
        ),
      ),
      drawer: MainDrawer(),
      );

  }
}
