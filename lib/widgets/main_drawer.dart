import 'package:flutter/material.dart';
import 'package:shopedit/screens/my_activity.dart';
import 'package:shopedit/screens/my_cart.dart';
import 'package:shopedit/screens/my_purchases.dart';
import '../screens/about.dart';
import '../screens/settings.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 25,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            fontFamily: 'RobotoCondensed'),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              color: Theme.of(context).accentColor,
              child: Text(
                "cooking Up",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Theme.of(context).primaryColor),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            buildListTile("Settings", Icons.settings, () {
              Navigator.of(context).pushNamed(Settings.routeName);
            }),
            buildListTile("My Cart", Icons.shopping_cart_outlined, () {
              Navigator.of(context).pushNamed(MyCart.routeName);
            }),
            buildListTile("My Purchases", Icons.shopping_bag_outlined, () {
              Navigator.of(context).pushNamed(MyPurchases.routeName);
            }),
            buildListTile("My Activities", Icons.list, () {
              Navigator.of(context).pushNamed(MyActivity.routeName);
            }),
            buildListTile("About", Icons.info, () {
              Navigator.of(context).pushNamed(AboutScreen.RouteName);
            }),
            SizedBox(
              height: 30,
            ),
            buildListTile("Log out", Icons.logout, () {}),
          ],
        ),
      ),
    );
  }
}
