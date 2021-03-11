import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  static const RouteName = "about_screen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("About"),
        ),
        body: Container(
          color: Colors.white12,
          child: Column(
            children: [
              Card(
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    buildListTile(Icons.shop , "  Flutter Store"),
                    SizedBox(height: 10,),
                    buildListTile(Icons.info , "  Version"),
                    SizedBox(height: 10,),
                    buildListTile(Icons.share , "  Share this app"),
                  ],
                ),
              ),
              Card(

                margin: EdgeInsets.all(15),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Another",style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(

                        children: [
                          Icon(Icons.person),
                          SizedBox(
                            width: 30,
                          ),

                          Column(
                            children: [
                              Text("Author Name",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(
                                "Syria",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black54),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  ListTile buildListTile(IconData icon , String textLeading) {
    return ListTile(
      leading: Icon(icon),
      title: Text(textLeading),
                  );
  }
}
