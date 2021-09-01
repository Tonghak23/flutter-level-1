import 'package:flutter/material.dart';
import 'package:flutter_application/main.dart';

class BottomAppbar extends StatefulWidget {
  @override
  _BottomAppbarState createState() => _BottomAppbarState();
}

class _BottomAppbarState extends State<BottomAppbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomAppbar for Navigation"),
      ),
      body: Container(
        color: Colors.blueGrey,
      ),
      bottomNavigationBar: _buildBottomAppbar(),
    );
  }
  _buildBottomAppbar() {
    return BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home,color: Colors.blueGrey,),
            title: new Text('Home',style: TextStyle(color: Colors.blueGrey)),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.play_circle_outline,color: Colors.blueGrey,),
            title: new Text('Play',style: TextStyle(color: Colors.blueGrey)),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined,color: Colors.blueGrey,),
              title: Text('Me',style: TextStyle(color: Colors.blueGrey))
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu,color: Colors.blueGrey,),
              title: Text("Menu",style: TextStyle(color: Colors.blueGrey),)
          ),
    ]);
  }
}
