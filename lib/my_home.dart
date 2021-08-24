import 'package:flutter/material.dart';
class Myhome extends StatelessWidget{
  final _scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: _buildAppbar,
      body: _buildBody,
      //endDrawer: _buildDrawerApp,
      // bottomNavigationBar: _buildButtomAppBar,
      bottomNavigationBar: _buildButtomNavBar,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          SnackBar snackBar = SnackBar(
            content: Text("Hello"),
            duration: Duration(milliseconds: 600),
          );
          // _scaffoldkey.currentState.showSnackBar(snackBar);
        },
        backgroundColor: Colors.redAccent[400],
        foregroundColor: Colors.white,
        child: Icon(Icons.account_balance_wallet_outlined),
      ),
    );
  }
  // get _buildDrawerApp{
  //     return Drawer(
  //         child: Column(
  //           children: <Widget>[
  //             UserAccountsDrawerHeader(
  //               accountEmail: Text('tonghakhoun9@gmail.com'),
  //               accountName: Text('Takexn'),
  //               currentAccountPicture: CircleAvatar(
  //                 backgroundImage: AssetImage("assets/img/12.jpg"),
  //               ),
  //             ),
  //             ListTile(
  //               leading: Icon(Icons.home),
  //               title: Text('Home'),
  //             ),
  //             ListTile(
  //               leading: Icon(Icons.account_circle),
  //               title: Text('User Account'),
  //             ),
  //             ListTile(
  //               leading: Icon(Icons.settings),
  //               title: Text('Setting'),
  //             )
  //           ],
  //         )
  //     );
  // }
  String logo = "http://media.corporate-ir.net/media_files/IROL/17/176060/Oct18/Amazon%20logo.PNG";
  String f9 = "https://www.looper.com/img/gallery/is-this-how-han-returns-in-fast-and-furious-9/intro-1580828666.jpg";
  get _buildAppbar {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            child: Text("Movie App"),
          ),
          InkWell(
            child: Text("Latest Movie"),
          ),
        ],
      ),
      leading: InkWell(child: Image.network(logo), onTap: (){
        print("Clicked");
      }),
    );
  }

  get _buildBody => Container(
    alignment: Alignment.center,
    color: Colors.blue[200],
    child: Container(
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
      ),

      child: Container(
        color: Colors.deepOrange,
        alignment: Alignment.center,
        child: Image.network(f9,fit: BoxFit.cover,),
      ),
    ),
  );
  get _buildButtomAppBar {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(icon: Icon(Icons.home),
            onPressed: (){
            },),
          IconButton(icon: Icon(Icons.video_label_sharp),
            onPressed: (){
            },),
          IconButton(icon: Icon(Icons.add_location_alt),
            onPressed: (){
            },),
          IconButton(icon: Icon(Icons.shopping_basket_rounded),
            onPressed: (){
            },),
          IconButton(icon: Icon(Icons.settings),
            onPressed: (){
            },)
        ],
      ),
    );
  }
  get _buildButtomNavBar => BottomNavigationBar(
    selectedItemColor: Colors.blueAccent[700],
    unselectedItemColor: Colors.deepOrange[600],
    backgroundColor: Colors.white70,
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home,size: 28,),title: Text("Home"),),
      BottomNavigationBarItem(icon: Icon(Icons.play_circle_outline,size: 28),title: Text("Play")),
      BottomNavigationBarItem(icon: Icon(Icons.account_circle_sharp,size: 28),title: Text("Users")),
    ],
  );
}