import 'package:flutter/material.dart';
import 'package:shopedit/screens/about.dart';
import 'package:shopedit/screens/item_details_screen.dart';
import 'package:shopedit/screens/my_activity.dart';
import 'package:shopedit/screens/my_cart.dart';
import 'package:shopedit/screens/my_purchases.dart';
import 'package:shopedit/screens/settings.dart';
import 'package:shopedit/screens/tab_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TabScreen(),
      routes: {
        ItemDetailsScreen.RouteName :(_) => ItemDetailsScreen(),
        AboutScreen.RouteName :(context) => AboutScreen(),
        Settings.routeName :(context) =>Settings(),
        MyActivity.routeName:(context) =>MyActivity(),
        MyPurchases.routeName:(context) =>MyPurchases(),
        MyCart.routeName:(context) =>MyCart(),
         },
    );
  }
}


