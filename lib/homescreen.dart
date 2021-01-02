import 'package:carousel_slider/carousel_slider.dart';
import 'package:easyhome/configuration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  double xOffset =0;
  double yOffset =0;
  double scaleFactor=1;
  bool isDrawerOpen =false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(isDrawerOpen?50:0)
      ),

      child: Column(
        children: [
          SizedBox(height: 50,),
          Container(

            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              isDrawerOpen ?IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
                setState(() {
                  xOffset =0;
                  yOffset = 0;
                  scaleFactor = 1;
                  isDrawerOpen = false;
                });
              }) :  IconButton(icon: Icon(Icons.menu), onPressed: (){
                  setState(() {
                    xOffset = 275;
                    yOffset = 150;
                    scaleFactor = 0.6;
                    isDrawerOpen = true;
                  });
                }),
                Column(
                  children: [
                    Text("Location"),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: primaryGreen,),
                        Text("Kanchipuram"),

                      ],

                    ),

                  ],
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("images/profile.jpg"),
                ),
              ],
            ),
          ),

        // Container(
        //
        //   padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        //   margin: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
        //   decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Icon(Icons.search),
        //       Text("Search"),
        //       Icon(Icons.settings),
        //     ],
        //   ),
        // ),
          SizedBox(height: 10,),
          SizedBox(
            height: 200.0,
            width: 395.0,
            child: Carousel(
              boxFit: BoxFit.cover,
              autoplay: true,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(milliseconds: 1000),
              dotSize: 6.0,
              dotIncreasedColor: Colors.white,
              dotBgColor: Colors.black26,
              dotPosition: DotPosition.bottomCenter,
              showIndicator: true,
              indicatorBgPadding: 10.0,
              borderRadius: true,
              overlayShadow: true,
              overlayShadowColors: primaryGreen,
              overlayShadowSize: 0.3,
              images: [
                NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),

              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    height: 50,
                    child:Text("Bike",style: TextStyle(fontWeight: FontWeight.bold,)),
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black26,image: DecorationImage(image: AssetImage("images/helmate.jpg"),fit: BoxFit.fill)),
                ),
                SizedBox(width: 17,),
                Container(
                  height: 80,
                  width: 80,

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black26,image: DecorationImage(image: AssetImage("images/profile.jpg"),fit: BoxFit.fill)),

                ),
                SizedBox(width: 17,),
                Container(
                  height: 80,
                  width: 80,

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black26,image: DecorationImage(image: AssetImage("images/profile.jpg"),fit: BoxFit.fill)),
                ),
                SizedBox(width: 17,),
                Container(
                  height: 80,
                  width: 80,

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black26,image: DecorationImage(image: AssetImage("images/profile.jpg"),fit: BoxFit.fill)),
                ),



              ],
            ),
          ),


        ],
      ),

    );
  }
}
