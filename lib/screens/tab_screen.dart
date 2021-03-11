import 'package:flutter/material.dart';
import 'package:shopedit/screens/electronic_screen.dart';
import 'package:shopedit/screens/jewelery_screen.dart';
import 'package:shopedit/screens/men_screen.dart';
import 'package:shopedit/screens/women_screen.dart';
import 'package:shopedit/widgets/main_drawer.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Shop"),
          bottom: TabBar(
            isScrollable: true,
            labelPadding: EdgeInsets.symmetric(horizontal: 10),
            tabs: [
              Tab(
                text: "Electronics",
              ),
              Tab(
                text: "Jewelery",
              ),
              Tab(
                text: "Men clothing",
              ),
              Tab(
                text: "Women clothing",
              ),
            ],
          ),

        ),
        body: TabBarView(
          children: [
            ElectronicScreen(),
            JeweleryScreen(),
            MenScreen(),
            WomenScreen(),

          ],
        ),

        drawer: MainDrawer(),

      ),
    );
  }
}
