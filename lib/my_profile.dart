import 'package:flutter_application/main.dart';
import 'package:flutter/material.dart';

  class MyProfile extends StatelessWidget {
    const MyProfile({Key? key}) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: Text("My profile"),
          ),
          drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Text("My profile",style: TextStyle(fontSize: 24.0,color: Colors.blueGrey),),
                decoration: BoxDecoration(
                    color: Colors.blueAccent
                ),
              ),
              ListTile(
                leading: IconButton(icon: Icon(Icons.home), onPressed: () {  },),
                title: Text("Home"),
                trailing: IconButton(icon: Icon(Icons.arrow_right), onPressed: () {  },),
              ),
              ListTile(
                leading: IconButton(icon: Icon(Icons.collections_bookmark), onPressed: () {  },),
                title: Text("Course"),
                trailing: IconButton(icon: Icon(Icons.arrow_right), onPressed: () {  },),
              ),
              ListTile(
                leading: IconButton(icon: Icon(Icons.settings), onPressed: () {  },),
                title: Text("Logout",style: TextStyle(color: Colors.red),),
                trailing: IconButton(icon: Icon(Icons.arrow_right), onPressed: () {  },),
              ),

            ],
          ),
        ),
      );

    }
  }
  