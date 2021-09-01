import 'package:flutter/material.dart';
import 'package:flutter_application/main.dart';
import 'package:flutter_application/detail_page.dart';

class MyCustomViewPage extends StatefulWidget {
  const MyCustomViewPage({Key? key}) : super(key: key);

  @override
  _MyCustomViewPageState createState() => _MyCustomViewPageState();
}

class _MyCustomViewPageState extends State<MyCustomViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }
  _buildBody() {
    return CustomScrollView(
      // physics: BouncingScrollPhysics(),
      slivers: [
        _buildSliverAppbar(),
        _buildSliverList()
      ],
    );
  }
  _buildSliverAppbar(){
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      leading:Image.network("https://icons-for-free.com/iconfiles/png/512/google+plus+social+icon-1320192247806987255.png",fit: BoxFit.cover,),
      actions: [IconButton(onPressed: (){}, icon: Icon(Icons.near_me_outlined))],
      floating: false,
      flexibleSpace: Container(
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //     colors: [
        //       Colors.blueGrey,
        //       Colors.blueAccent
        //     ],
        //   ),
        // ),
      ),
    );
  }
  _buildSliverList() {
    return SliverList(
        delegate: SliverChildBuilderDelegate((context,index){
          return _buildItem(movielist[index]);
        },childCount: movielist.length),
    );
  }
  // _buildItem(Movie item) {
  //   return Card(
  //     child: ListTile(
  //       title: Text(item.title),
  //       subtitle: Text(item.body),
  //     ),
  //   );
  // }Way 1 build Card with SliverList
  _buildItem(Movie item){
    return InkWell(
      onTap: (){
        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage(movie: item,)));
      },
      child: _buildComplexBox(item.img, item.title, item.body),
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
}
class Movie{
  late String img,title,body;
  Movie({required this.img,required this.title,required this.body});
}
List<Movie> movielist = [
  Movie(img: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/f9-1624892833.jpeg", title: "The Fast and the Furious 9", body: "F9 was originally scheduled for a worldwide release by Universal Pictures on April 19, 2019"),
  Movie(img: "https://cdn.vox-cdn.com/thumbor/a2AN1xzuEq34sE9HIlJSOxU1hHM=/0x0:1100x691/1200x800/filters:focal(462x258:638x434)/cdn.vox-cdn.com/uploads/chorus_image/image/68509391/Avatar.0.png", title: "Avartar 2009",body: "Avatar is a 2009 American epic science fiction film directed, written, produced"),
  Movie(img: "https://www.scifipulse.net/wp-content/uploads/2019/12/Jumanji-Next-Level.jpeg", title: "Jumanjii",body: "Jumanji is a 1995 American fantasy adventure film directed by Joe Johnston. It is loosely based on the 1981"),
  Movie(img: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/f9-1624892833.jpeg", title: "The Fast and the Furious 9", body: "F9 was originally scheduled for a worldwide release by Universal Pictures on April 19, 2019"),
  Movie(img: "https://cdn.vox-cdn.com/thumbor/a2AN1xzuEq34sE9HIlJSOxU1hHM=/0x0:1100x691/1200x800/filters:focal(462x258:638x434)/cdn.vox-cdn.com/uploads/chorus_image/image/68509391/Avatar.0.png", title: "Avartar 2009",body: "Avatar is a 2009 American epic science fiction film directed, written, produced"),
  Movie(img: "https://www.scifipulse.net/wp-content/uploads/2019/12/Jumanji-Next-Level.jpeg", title: "Jumanjii",body: "Jumanji is a 1995 American fantasy adventure film directed by Joe Johnston. It is loosely based on the 1981"),
  Movie(img: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/f9-1624892833.jpeg", title: "The Fast and the Furious 9", body: "F9 was originally scheduled for a worldwide release by Universal Pictures on April 19, 2019"),
  Movie(img: "https://cdn.vox-cdn.com/thumbor/a2AN1xzuEq34sE9HIlJSOxU1hHM=/0x0:1100x691/1200x800/filters:focal(462x258:638x434)/cdn.vox-cdn.com/uploads/chorus_image/image/68509391/Avatar.0.png", title: "Avartar 2009",body: "Avatar is a 2009 American epic science fiction film directed, written, produced"),
  Movie(img: "https://www.scifipulse.net/wp-content/uploads/2019/12/Jumanji-Next-Level.jpeg", title: "Jumanjii",body: "Jumanji is a 1995 American fantasy adventure film directed by Joe Johnston. It is loosely based on the 1981"),
  Movie(img: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/f9-1624892833.jpeg", title: "The Fast and the Furious 9", body: "F9 was originally scheduled for a worldwide release by Universal Pictures on April 19, 2019"),
  Movie(img: "https://cdn.vox-cdn.com/thumbor/a2AN1xzuEq34sE9HIlJSOxU1hHM=/0x0:1100x691/1200x800/filters:focal(462x258:638x434)/cdn.vox-cdn.com/uploads/chorus_image/image/68509391/Avatar.0.png", title: "Avartar 2009",body: "Avatar is a 2009 American epic science fiction film directed, written, produced"),
  Movie(img: "https://www.scifipulse.net/wp-content/uploads/2019/12/Jumanji-Next-Level.jpeg", title: "Jumanjii",body: "Jumanji is a 1995 American fantasy adventure film directed by Joe Johnston. It is loosely based on the 1981"),
  Movie(img: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/f9-1624892833.jpeg", title: "The Fast and the Furious 9", body: "F9 was originally scheduled for a worldwide release by Universal Pictures on April 19, 2019"),
  Movie(img: "https://cdn.vox-cdn.com/thumbor/a2AN1xzuEq34sE9HIlJSOxU1hHM=/0x0:1100x691/1200x800/filters:focal(462x258:638x434)/cdn.vox-cdn.com/uploads/chorus_image/image/68509391/Avatar.0.png", title: "Avartar 2009",body: "Avatar is a 2009 American epic science fiction film directed, written, produced"),
  Movie(img: "https://www.scifipulse.net/wp-content/uploads/2019/12/Jumanji-Next-Level.jpeg", title: "Jumanjii",body: "Jumanji is a 1995 American fantasy adventure film directed by Joe Johnston. It is loosely based on the 1981"),
  Movie(img: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/f9-1624892833.jpeg", title: "The Fast and the Furious 9", body: "F9 was originally scheduled for a worldwide release by Universal Pictures on April 19, 2019"),
  Movie(img: "https://cdn.vox-cdn.com/thumbor/a2AN1xzuEq34sE9HIlJSOxU1hHM=/0x0:1100x691/1200x800/filters:focal(462x258:638x434)/cdn.vox-cdn.com/uploads/chorus_image/image/68509391/Avatar.0.png", title: "Avartar 2009",body: "Avatar is a 2009 American epic science fiction film directed, written, produced"),
  Movie(img: "https://www.scifipulse.net/wp-content/uploads/2019/12/Jumanji-Next-Level.jpeg", title: "Jumanjii",body: "Jumanji is a 1995 American fantasy adventure film directed by Joe Johnston. It is loosely based on the 1981"),
  Movie(img: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/f9-1624892833.jpeg", title: "The Fast and the Furious 9", body: "F9 was originally scheduled for a worldwide release by Universal Pictures on April 19, 2019"),
  Movie(img: "https://cdn.vox-cdn.com/thumbor/a2AN1xzuEq34sE9HIlJSOxU1hHM=/0x0:1100x691/1200x800/filters:focal(462x258:638x434)/cdn.vox-cdn.com/uploads/chorus_image/image/68509391/Avatar.0.png", title: "Avartar 2009",body: "Avatar is a 2009 American epic science fiction film directed, written, produced"),
  Movie(img: "https://www.scifipulse.net/wp-content/uploads/2019/12/Jumanji-Next-Level.jpeg", title: "Jumanjii",body: "Jumanji is a 1995 American fantasy adventure film directed by Joe Johnston. It is loosely based on the 1981"),
  Movie(img: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/f9-1624892833.jpeg", title: "The Fast and the Furious 9", body: "F9 was originally scheduled for a worldwide release by Universal Pictures on April 19, 2019"),
  Movie(img: "https://cdn.vox-cdn.com/thumbor/a2AN1xzuEq34sE9HIlJSOxU1hHM=/0x0:1100x691/1200x800/filters:focal(462x258:638x434)/cdn.vox-cdn.com/uploads/chorus_image/image/68509391/Avatar.0.png", title: "Avartar 2009",body: "Avatar is a 2009 American epic science fiction film directed, written, produced"),
  Movie(img: "https://www.scifipulse.net/wp-content/uploads/2019/12/Jumanji-Next-Level.jpeg", title: "Jumanjii",body: "Jumanji is a 1995 American fantasy adventure film directed by Joe Johnston. It is loosely based on the 1981"),
  Movie(img: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/f9-1624892833.jpeg", title: "The Fast and the Furious 9", body: "F9 was originally scheduled for a worldwide release by Universal Pictures on April 19, 2019"),
  Movie(img: "https://cdn.vox-cdn.com/thumbor/a2AN1xzuEq34sE9HIlJSOxU1hHM=/0x0:1100x691/1200x800/filters:focal(462x258:638x434)/cdn.vox-cdn.com/uploads/chorus_image/image/68509391/Avatar.0.png", title: "Avartar 2009",body: "Avatar is a 2009 American epic science fiction film directed, written, produced"),
  Movie(img: "https://www.scifipulse.net/wp-content/uploads/2019/12/Jumanji-Next-Level.jpeg", title: "Jumanjii",body: "Jumanji is a 1995 American fantasy adventure film directed by Joe Johnston. It is loosely based on the 1981"),
  Movie(img: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/f9-1624892833.jpeg", title: "The Fast and the Furious 9", body: "F9 was originally scheduled for a worldwide release by Universal Pictures on April 19, 2019"),
  Movie(img: "https://cdn.vox-cdn.com/thumbor/a2AN1xzuEq34sE9HIlJSOxU1hHM=/0x0:1100x691/1200x800/filters:focal(462x258:638x434)/cdn.vox-cdn.com/uploads/chorus_image/image/68509391/Avatar.0.png", title: "Avartar 2009",body: "Avatar is a 2009 American epic science fiction film directed, written, produced"),
  Movie(img: "https://www.scifipulse.net/wp-content/uploads/2019/12/Jumanji-Next-Level.jpeg", title: "Jumanjii",body: "Jumanji is a 1995 American fantasy adventure film directed by Joe Johnston. It is loosely based on the 1981"),
];
