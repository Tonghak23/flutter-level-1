import 'package:flutter/material.dart';
import 'package:flutter_application/main.dart';

  class MyStatefullExample extends StatefulWidget {
    const MyStatefullExample({Key? key}) : super(key: key);

    @override
    _MyStatefullExampleState createState() => _MyStatefullExampleState();
  }

  class _MyStatefullExampleState extends State<MyStatefullExample> {
    String _title ="Statefull widget";
    Color _clr = Colors.red;
    bool _dark = false;
    bool _show = true;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: _buildAppBar,
        body: Container(color: _dark == false ? Colors.white : Colors.blueGrey),
        floatingActionButton: _show ? _bulidflation : null,
      );
    }
    get _bulidflation => FloatingActionButton(child: Icon(Icons.play_circle_outline),onPressed: () {  },);
    get _buildAppBar => AppBar(
        backgroundColor: _dark == false ? Colors.indigo : Colors.white70,
        title: Text(_title),
        actions: [
          IconButton(icon: Icon(Icons.account_circle_outlined),onPressed: (){
              setState(() {
                  _title ="Hello Statefull";
                  _clr=Colors.indigo;
                  _show=!_show;
              });
          },),
          IconButton(icon: Icon(Icons.replay_circle_filled),onPressed: (){
                setState(() {
                    _dark=!_dark;
                });
          },),
        ],
    );
  }
