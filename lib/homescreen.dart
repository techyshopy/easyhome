import 'package:easyhome/configuration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            margin: EdgeInsets.symmetric(horizontal: 20),
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
                CircleAvatar(),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
