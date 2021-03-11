import 'package:flutter/material.dart';
import '../dummy_data.dart';

class ItemDetailsScreen extends StatelessWidget {
  static const RouteName = 'item_details';

  @override
  Widget build(BuildContext context) {
    final itemId = ModalRoute.of(context).settings.arguments as int;

    final selectedItem = Dummy_Details.firstWhere((meal) => meal.id == itemId);

    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Image.asset(selectedItem.imageitem , fit: BoxFit.cover,),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: deviceSize.width,
                  height: deviceSize.height,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: new BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Title"),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                              selectedItem.title),
                          SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                      SizedBox(height: 50,),
                      Row(
                        children: [
                          Text("description"),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                              selectedItem.descrption),
                          SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                      SizedBox(height: 50,),
                      Row(
                        children: [
                          Text("Category"),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                              selectedItem.category),
                          SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                      SizedBox(height: 50,),
                      Row(
                        children: [
                          Text("Price"),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                             "${ selectedItem.price}"),
                          SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.shopping_cart_outlined),
        onPressed: () {},
      ),
    );
  }
}