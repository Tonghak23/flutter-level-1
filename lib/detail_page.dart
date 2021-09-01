import 'package:flutter/material.dart';
import 'package:flutter_application/main.dart';
import 'my_listview_builder_page.dart';
class DetailPage extends StatefulWidget {
  // const DetailPage({Key? key}) : super(key: key);

  Movie movie;
  DetailPage({required this.movie});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        title: Text("${widget.movie.title}",style: TextStyle(fontFamily: 'VarelaRound-Regular')),
      ),
      body: _buildBody(),
      bottomNavigationBar:  _buildNavigation() ,
    );
  }
  _buildBody() {
    return Column(
      children: [
        Image.network(widget.movie.img,fit: BoxFit.cover,),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          color: Colors.blueGrey,
          child: Container(
              margin: EdgeInsets.all(20),
              child: Text(widget.movie.body,style: TextStyle(color: Colors.white,fontFamily: 'VarelaRound-Regular'),)),
        ),
      ],
    );
  }
  _buildNavigation() {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(icon: Icon(Icons.home,size: 30.0,color: Colors.indigo),onPressed: (){},),
          IconButton(icon: Icon(Icons.play_circle_outline,size: 30.0,color: Colors.indigo,),onPressed: (){},),
          IconButton(icon: Icon(Icons.replay_circle_filled,size: 30.0,color: Colors.indigo,),onPressed: (){},),
          IconButton(icon: Icon(Icons.account_circle,size: 30.0,color: Colors.indigo,),onPressed: (){},),
          IconButton(icon: Icon(Icons.menu,size:30.0,color: Colors.indigo,),onPressed: (){
          },
          ),
        ],
      ),
    );
  }
}
