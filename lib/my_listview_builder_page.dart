import 'package:flutter/material.dart';
import 'package:flutter_application/detail_page.dart';
import 'package:flutter_application/main.dart';

class MyListViewBuilderPage extends StatefulWidget {
  const MyListViewBuilderPage({Key? key}) : super(key: key);
  @override
  _MyListViewBuilderPageState createState() => _MyListViewBuilderPageState();
}

class _MyListViewBuilderPageState extends State<MyListViewBuilderPage> {
  // double _screenWidth;
  ScrollController _scroller = ScrollController();
  var _scaffoldkey = GlobalKey<ScaffoldState>();
  String profile = "https://static.wixstatic.com/media/902040_30336145aa8b40d8b6e898e3e107f92c~mv2.png/v1/fill/w_300,h_302,al_c,q_85,usm_0.66_1.00_0.01/User%2005c.webp";
  @override
  Widget build(BuildContext context) {
    // _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
           key: _scaffoldkey,
           appBar: _buildAppBar,
           body: _buildBody(),
           drawer: _buildDrawer(),
           bottomNavigationBar: _buildNavigation(),
    );
  }
  _buildDrawer() {
    return Drawer(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
              DrawerHeader(
                // decoration: BoxDecoration(
                //   gradient: LinearGradient(
                //     begin: Alignment.topCenter,
                //     end: Alignment.bottomCenter,
                //     colors: [Colors.white70,Colors.blueAccent],
                //   ),
                // ),
                child: Image.network(profile),
              ),
              ListTile(
              leading: Icon(Icons.home,color: Colors.blueGrey[900]),
              title: Text("Home",style: TextStyle(fontFamily: 'VarelaRound-Regular',fontSize: 20.0)),
              trailing: Icon(Icons.navigate_next_sharp,color: Colors.indigoAccent,),
              ),
              ListTile(
               leading: Icon(Icons.account_circle_outlined,color: Colors.blueGrey[900]),
               title: Text("Me",style: TextStyle(fontFamily: 'VarelaRound-Regular',fontSize: 20.0)),
               trailing: Icon(Icons.navigate_next_sharp,color: Colors.indigoAccent,),
              ),
              ListTile(
              leading: Icon(Icons.computer_sharp,color: Colors.blueGrey[900]),
              title: Text("Course",style: TextStyle(fontFamily: 'VarelaRound-Regular',fontSize: 20.0)),
              trailing: Icon(Icons.navigate_next_sharp,color: Colors.indigoAccent,),
              ),
              ListTile(
              leading: Icon(Icons.location_history,color: Colors.blueGrey[900]),
              title: Text("Location",style: TextStyle(fontFamily: 'VarelaRound-Regular',fontSize: 20.0)),
              trailing: Icon(Icons.navigate_next_sharp,color: Colors.indigoAccent,),
              ),
              ListTile(
              leading: Icon(Icons.settings,color: Colors.blueGrey[900],),
              title: Text("Setting",style: TextStyle(fontFamily: 'VarelaRound-Regular',fontSize: 20.0)),
              trailing: Icon(Icons.navigate_next_sharp,color: Colors.indigoAccent,),
              ),
              ListTile(
              leading: Icon(Icons.logout,color: Colors.redAccent,),
              title: Text("Logout",style: TextStyle(fontFamily: 'VarelaRound-Regular',fontSize: 20.0,color: Colors.redAccent)),
              trailing: Icon(Icons.navigate_next_sharp,color: Colors.redAccent,),
            ),
          ],
        ),
    );
  }
  get _buildAppBar =>AppBar(
      backgroundColor: Colors.blueGrey[800],
      title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(child: Text("latest",style: TextStyle(fontFamily: 'VarelaRound-Regular')),onTap: (){},),
            InkWell(child: Text("popular",style: TextStyle(fontFamily: 'VarelaRound-Regular')),onTap: (){},),
            InkWell(child: Text("favorite",style: TextStyle(fontFamily: 'VarelaRound-Regular')),onTap: (){},),
          ],
      ),
  );
  _buildBody() {
    return Container(
      child: _buildListview(),
    );
  }
  _buildListview() {
    return ListView.builder(
        itemCount: movielist.length,
        itemBuilder: (context, index) {
          return _buildItem(movielist[index]);
        }
    );
  }
  _buildItem(Movie item){
      return InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage(movie: item,)));
          },
          child: _buildComplexBox(item.img, item.title, item.body),
      );
  }
  // get _buildBody {
  //     return Container(
  //         alignment: Alignment.center,
  //         child: Row(
  //              mainAxisAlignment: MainAxisAlignment.spaceAround,
  //              crossAxisAlignment: CrossAxisAlignment.end,
  //              children: [
  //                // _buildBox(Colors.indigo,h:200),
  //                _buildBox(Colors.blueGrey,h:150),
  //                _buildBox(Colors.redAccent,h: 150),
  //       ],
  //         ),
  //     );
  // }
  _buildBox(Color color,{double w=200,double h=100}) =>Container(
      width: w,
      height:h,
      color: color,
  );
//Building bottomAppbar with Row
  _buildNavigation() {
      return BottomAppBar(
            // child: Row(
            //     children: [
            //       ListTile(
            //         leading: IconButton(icon: Icon(Icons.home), onPressed: () {  },),
            //         title: Text("Home"),
            //       ),
            //       ListTile(
            //         leading: IconButton(icon: Icon(Icons.play_circle_outline), onPressed: () {  },),
            //         title: Text("Play"),
            //       ),
            //       ListTile(
            //         leading: IconButton(icon: Icon(Icons.live_tv_rounded), onPressed: () {  },),
            //         title: Text("Videos"),
            //       ),
            //       ListTile(
            //         leading: IconButton(icon: Icon(Icons.account_circle_outlined), onPressed: () {  },),
            //         title: Text("Me"),
            //       ),
            //       ListTile(
            //         leading: IconButton(icon: Icon(Icons.menu), onPressed: () {  },),
            //         title: Text("Menu"),
            //       ),
            //     ],
            // ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                IconButton(icon: Icon(Icons.home,size: 30.0,color: Colors.indigo),onPressed: (){},),
                IconButton(icon: Icon(Icons.play_circle_outline,size: 30.0,color: Colors.indigo,),onPressed: (){},),
                IconButton(icon: Icon(Icons.replay_circle_filled,size: 30.0,color: Colors.indigo,),onPressed: (){},),
                IconButton(icon: Icon(Icons.account_circle,size: 30.0,color: Colors.indigo,),onPressed: (){},),
                IconButton(icon: Icon(Icons.menu,size:30.0,color: Colors.indigo,),onPressed: (){
                  _scaffoldkey.currentState!.openDrawer();
                },),
            ],
          ),
      );
  }
  _buildBodyListwithStack() {
    return Container(
      child: Stack(
        children: [
          _buildMainList(),
          Positioned(
              child: _buildUpArrow(),
              bottom: 8.0,
              right: 8.0,
          ),
        ],
      ),
    );
  }
  _buildUpArrow() {
    return InkWell(
      onTap: (){
          _scroller.animateTo(0.0, duration: Duration(milliseconds: 600), curve: Curves.easeInOut);
        },
      child: Container(
        width: 60.0,
        height: 60.0,
        child: Icon(Icons.arrow_circle_up,color: Colors.white,),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.indigoAccent,
        ),
      ),
    );
  }
  _buildMainList() {
    return Container(
      child: ListView(
        controller: _scroller,
        children: [
          _buildListRow1(),
          _buildListRow1(),
          _buildListRow2(),
          _buildListRow1(),
          _buildListRow1(),
        ],
      ),
    );
  }
  _buildListRow1() {
    return Container(
           height: 180.0,
        // height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
            reverse: true,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            children: [
              _buildComplexBox("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/f9-1624892833.jpeg",
                               "The Fast and the Furious 9","F9 was originally scheduled for a worldwide release by Universal Pictures on April 19, 2019"),
              _buildComplexBox("https://cdn.vox-cdn.com/thumbor/a2AN1xzuEq34sE9HIlJSOxU1hHM=/0x0:1100x691/1200x800/filters:focal(462x258:638x434)/cdn.vox-cdn.com/uploads/chorus_image/image/68509391/Avatar.0.png",
                              "Avartar 2009","Avatar is a 2009 American epic science fiction film directed, written, produced"),
              _buildComplexBox("https://pics.filmaffinity.com/Jumanji_Welcome_to_the_Jungle-105552152-large.jpg",
                              "Jumanjii","Jumanji is a 1995 American fantasy adventure film directed by Joe Johnston. It is loosely based on the 1981"),
              _buildComplexBox("https://i1.sndcdn.com/artworks-gUH3kJ93Ood8SyrH-JExr4g-t500x500.jpg",
                               "Mulan","Mulan is a 2020 American fantasy action drama film produced by Walt Disney Pictures."),
              _buildComplexBox("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/f9-1624892833.jpeg",
                               "The Fast and the Furious 9",
                              "F9 was originally scheduled for a worldwide release by Universal Pictures on April 19, 2019"),
              _buildComplexBox("https://cdn.vox-cdn.com/thumbor/a2AN1xzuEq34sE9HIlJSOxU1hHM=/0x0:1100x691/1200x800/filters:focal(462x258:638x434)/cdn.vox-cdn.com/uploads/chorus_image/image/68509391/Avatar.0.png",
                               "Avartar 2009",
                               "Avatar is a 2009 American epic science fiction film directed, written, produced, and co-edited by James Cameron and starring Sam Worthington"),
              _buildComplexBox("https://pics.filmaffinity.com/Jumanji_Welcome_to_the_Jungle-105552152-large.jpg",
                               "Jumanjii","Jumanji is a 1995 American fantasy adventure film directed by Joe Johnston. It is loosely based on the 1981"),
              _buildComplexBox("https://i1.sndcdn.com/artworks-gUH3kJ93Ood8SyrH-JExr4g-t500x500.jpg",
                               "Mulan",
                               "Mulan is a 2020 American fantasy action drama film produced by Walt Disney Pictures."),
            ],
        ),
    );
  }
  _buildListRow2() {
    return Container(
      height: 500.0,
      // height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        shrinkWrap: true, //noted
        reverse: true,
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        children: [
          _buildComplexBox("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/f9-1624892833.jpeg",
              "The Fast and the Furious 9","F9 was originally scheduled for a worldwide release by Universal Pictures on April 19, 2019"),
          _buildComplexBox("https://cdn.vox-cdn.com/thumbor/a2AN1xzuEq34sE9HIlJSOxU1hHM=/0x0:1100x691/1200x800/filters:focal(462x258:638x434)/cdn.vox-cdn.com/uploads/chorus_image/image/68509391/Avatar.0.png",
              "Avartar 2009","Avatar is a 2009 American epic science fiction film directed, written, produced"),
          _buildComplexBox("https://pics.filmaffinity.com/Jumanji_Welcome_to_the_Jungle-105552152-large.jpg",
              "Jumanjii","Jumanji is a 1995 American fantasy adventure film directed by Joe Johnston. It is loosely based on the 1981"),
          _buildComplexBox("https://i1.sndcdn.com/artworks-gUH3kJ93Ood8SyrH-JExr4g-t500x500.jpg",
              "Mulan","Mulan is a 2020 American fantasy action drama film produced by Walt Disney Pictures."),
          _buildComplexBox("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/f9-1624892833.jpeg",
              "The Fast and the Furious 9",
              "F9 was originally scheduled for a worldwide release by Universal Pictures on April 19, 2019"),
          _buildComplexBox("https://cdn.vox-cdn.com/thumbor/a2AN1xzuEq34sE9HIlJSOxU1hHM=/0x0:1100x691/1200x800/filters:focal(462x258:638x434)/cdn.vox-cdn.com/uploads/chorus_image/image/68509391/Avatar.0.png",
              "Avartar 2009",
              "Avatar is a 2009 American epic science fiction film directed, written, produced, and co-edited by James Cameron and starring Sam Worthington"),
          _buildComplexBox("https://pics.filmaffinity.com/Jumanji_Welcome_to_the_Jungle-105552152-large.jpg",
              "Jumanjii","Jumanji is a 1995 American fantasy adventure film directed by Joe Johnston. It is loosely based on the 1981"),
          _buildComplexBox("https://i1.sndcdn.com/artworks-gUH3kJ93Ood8SyrH-JExr4g-t500x500.jpg",
              "Mulan",
              "Mulan is a 2020 American fantasy action drama film produced by Walt Disney Pictures."),
        ],
      ),
    );
  }
  _buildComplexBox(String img,String title,String body) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.indigo[300],
        ),
        margin: EdgeInsets.all(5.0),
        height: 165.0,
        width: MediaQuery.of(context).size.width,
        child: Row(
             children: [
               _buildCircleImage(img),
               SizedBox(width: 8.0,),
               Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      child: Container(
                        alignment: Alignment.center,
                        width: 90,height: 25,
                        decoration: BoxDecoration(color: Colors.blueAccent,borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text("See more..",style: TextStyle(color: Colors.white),),
                      ),
                      right: 1,bottom: 5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,style: TextStyle(fontSize: 18.0,color: Colors.black,fontWeight: FontWeight.bold),),
                        Container(
                            width: 228.0,
                            height: 100.0,
                            child:Text(body,style: TextStyle(fontSize: 16.0,color: Colors.black),
                              overflow: TextOverflow.fade,)
                        ),
                      ],
                    ),
                  ],
               ),
             ],
        ),
    );
  }
  _buildCircleImage(String img) {
    return Container(
      margin: EdgeInsets.all(8.0),
      width: 130.0,
      height: 130.0,
      child: Container(
           decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
            image: NetworkImage(img),
              fit: BoxFit.cover,
        ),
       ),
      ),
    );
 }
  _buildBodyStack() {
    return Container(
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(width: 400,height: 300,color: Colors.indigoAccent,),
          Container(width: 300,height: 200,color: Colors.deepOrange,),
          Container(width: 200,height: 100,color: Colors.white,),
          Positioned(child: Container(width: 500,height: 30,color: Colors.amberAccent,),right: 10.0,bottom: 10,)
        ],
      ),
    );
  }
}
class Movie{
  late String img,title,body;
  Movie({required this.img,required this.title,required this.body});
}
List<Movie> movielist = [
  Movie(img: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/f9-1624892833.jpeg", title: "The Fast and the Furious 9", body: "F9 was originally scheduled for a worldwide release by Universal Pictures on April 19, 2019"),
  Movie(img: "https://cdn.vox-cdn.com/thumbor/a2AN1xzuEq34sE9HIlJSOxU1hHM=/0x0:1100x691/1200x800/filters:focal(462x258:638x434)/cdn.vox-cdn.com/uploads/chorus_image/image/68509391/Avatar.0.png", title: "Avartar 2009",body: "Avatar is a 2009 American epic science fiction film directed, written, produced"),
  Movie(img: "https://www.scifipulse.net/wp-content/uploads/2019/12/Jumanji-Next-Level.jpeg", title: "Jumanjii",body: "Jumanji is a 1995 American fantasy adventure film directed by Joe Johnston. It is loosely based on the 1981"),
];

