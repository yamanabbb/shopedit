import 'package:flutter/material.dart';
import 'package:shopedit/dummy_data.dart';
import 'package:shopedit/widgets/electronic.dart';

class ElectronicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(15),
      children:

      [
        ...Dummy_electronic.map((item) => Electronic(item.id, item.imageUrl, item.title, item.price) ),
         ],


       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 0.7,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10
    ),

    );
  }
}
