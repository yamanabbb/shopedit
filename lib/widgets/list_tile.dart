import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {

  Widget buildListTile(IconData iconone , String title , IconData icontwo){
    return ListTile(
      leading: Icon(iconone) ,
      title: Text(title),
      trailing: Icon(icontwo),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Card(
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 2),
      child: Column(
        children: [
        buildListTile(Icons.lock_outline, "Change Password", Icons.arrow_forward_ios),
          Divider(color: Colors.grey[300],),
          buildListTile(Icons.language, "Change Language", Icons.arrow_forward_ios),
        ],

      ),

 );
  }
}
