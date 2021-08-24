import 'package:flutter/material.dart';
import 'package:flutter_application/main.dart';

class BannerPage extends StatefulWidget {
  const BannerPage({Key? key}) : super(key: key);
  @override
  _BannerPageState createState() => _BannerPageState();
}
class _BannerPageState extends State<BannerPage> {
  late double _screenWidth;
  @override
  Widget build(BuildContext context) {
    _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: _buildBody(),
    );
  }
  _buildBody() {
    return Container(
      child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
              children: [
                _buildBanner("https://pyxis.nymag.com/v1/imgs/016/9d5/d40927529501e21f126b6fd2dfabb3086f-13-fast-and-furious-vin-diesel-rock-figh.rsquare.w700.jpg"),
                _buildComplexBox("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/f9-1624892833.jpeg",
                    "The Fast and the Furious 9","F9 was originally scheduled for a worldwide release by Universal Pictures on April 19, 2019"),
                _buildComplexBox("https://cdn.vox-cdn.com/thumbor/a2AN1xzuEq34sE9HIlJSOxU1hHM=/0x0:1100x691/1200x800/filters:focal(462x258:638x434)/cdn.vox-cdn.com/uploads/chorus_image/image/68509391/Avatar.0.png",
                    "Avartar 2009","Avatar is a 2009 American epic science fiction film directed, written, produced"),
                _buildComplexBox("https://pics.filmaffinity.com/Jumanji_Welcome_to_the_Jungle-105552152-large.jpg",
                    "Jumanjii","Jumanji is a 1995 American fantasy adventure film directed by Joe Johnston. It is loosely based on the 1981"),
                // _buildComplexBox("https://i1.sndcdn.com/artworks-gUH3kJ93Ood8SyrH-JExr4g-t500x500.jpg",
                //     "Mulan","Mulan is a 2020 American fantasy action drama film produced by Walt Disney Pictures."),
                // _buildComplexBox("https://images-na.ssl-images-amazon.com/images/S/pv-target-images/955a8463e1c78c1547fa15a522c28889f22a7a1704219c3b04c43c76f44bd748._RI_V_TTW_.jpg",
                //     "Blood diamond 2008","Directed by Edward Zwick (Glory, The Last Samurai) this urgent, intensely moving adventure shapes gripping human stories and heart-pounding action into a modern epic of profound impact."),
                // _buildComplexBox("https://world-wire.com/wp-content/uploads/2020/08/ob_da9651_x4ujdew9l16nsj6z88dcdmnxxdl.jpg",
                //     "Project Power","Project Power is a 2020 American superhero film that is directed by Ariel Schulman and Henry Joost."),
                // _buildComplexBox("https://www.menstuff.co.za/wp-content/uploads/2020/03/Bloodshot-header.jpeg",
                //     "THE WAY BACK","Ben Affleck’s A Way Back treads pretty close to home for the Batman actor, telling a story of a man suffering from alcoholism,"),
                // _buildComplexBox("https://i.guim.co.uk/img/media/ee65004a3deeddf499a0814175c5500002ea13f9/277_130_2169_1302/master/2169.jpg?width=445&quality=45&auto=format&fit=max&dpr=2&s=3fafffa3add1b7010240245027523455",
                //     "Train to Busan","Train to Busan (Korean: 부산행; Hanja: 釜山行; RR: Busanhaeng; lit. To Busan) is a 2016 South Korean"),

              ],
          ),
      ),
    );
  }
  _buildBanner(String img) {
        return Container(
            width: _screenWidth,
            height: 550.0,
            child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                      width: _screenWidth,
                      height: 550.0,
                      child: Image.network(img,fit: BoxFit.cover,),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        // stops: [0.05,0.7],
                        colors: [
                            Colors.black,
                            Colors.black.withOpacity(0.2)
                        ],
                      )
                    ),
                  ),
                  Container(
                    height: 300.0,
                    width: _screenWidth,
                    child: Column(
                      children: [
                        Text("F9 SAGA",style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 80,color: Colors.white,fontFamily: 'VarelaRound-Regular'),),
                        Text("OFFICIAL TRAILER",style: TextStyle(
                            fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white, fontFamily: 'VarelaRound-Regular'),),
                        Text("Coming Soon",style: TextStyle(
                            fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white, fontFamily: 'VarelaRound-Regular'),),
                        SizedBox(height: 70.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.check,color: Colors.white,),
                                Text("My List",style: TextStyle(color: Colors.white,fontFamily: 'VarelaRound-Regular'),),
                              ],
                            ),
                            RaisedButton(
                                child: Row(
                                  children: [
                                    Icon(Icons.play_arrow),
                                    Text("Play",style: TextStyle(fontFamily: 'VarelaRound-Regular'),),
                                  ],
                                ),
                                onPressed: (){}
                            ),
                            Column(
                              children: [
                                Icon(Icons.info_outline,color: Colors.white,),
                                Text("Info",style: TextStyle(color: Colors.white,fontFamily: 'VarelaRound-Regular'),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                  ),

                ],
            ),
        );
  }
  _buildComplexBox(String img,String title,String body) {
    return Container(
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(8.0),
      //   color: Colors.black,
      // ),
      // margin: EdgeInsets.all(5.0),
      color: Colors.black,
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
                  child: Text("See more..",style: TextStyle(color: Colors.white,fontFamily: 'VarelaRound-Regular'),),
                ),
                right: 1,bottom: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: TextStyle(fontSize: 18.0,color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'VarelaRound-Regular'),),
                  Container(
                      width: 238.0,
                      height: 100.0,
                      child:Text(body,style: TextStyle(fontSize: 16.0,color: Colors.white,fontFamily: 'VarelaRound-Regular'),
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
