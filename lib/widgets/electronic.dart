import 'package:flutter/material.dart';
import '../screens/item_details_screen.dart';

class Electronic extends StatelessWidget {
  final int id;
  final String imageUrl;
  final String title;
  final double price;

  const Electronic(this.id, this.imageUrl, this.title, this.price);

  void selectedItem(BuildContext context) {
    Navigator.of(context).pushNamed(
      ItemDetailsScreen.RouteName,
      arguments:id
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectedItem(context),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(imageUrl),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.title,
            ),
            Text(
              price.toString(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.title,
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(15),
          // gradient: LinearGradient(
          //     colors: [color.withOpacity(0.6), color],
          //     begin: Alignment.topLeft,
          //     end: Alignment.bottomLeft)),
        ),
      ),
    );
  }
}
