import 'package:easyhome/configuration.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryGreen,
      padding: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 20),
            child: Row(
              children: [
                CircleAvatar(radius: 40,backgroundImage: AssetImage('images/profile.jpg'),),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Gopal", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                    Text("Admin",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 15),)
                  ],
                ),
              ],
            ),
          ),
        SizedBox(height: 50,),
        ListTile(
          leading: Icon(Icons.dashboard_customize,size: 30,color: Colors.white,),
          title: Text('Dashboard',style: TextStyle(fontSize: 20,color: Colors.white),),
          onTap: (){},
        ),
          ListTile(
            leading: Icon(Icons.person,size: 30,color: Colors.white,),
            title: Text('Profile',style: TextStyle(fontSize: 20,color: Colors.white),),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag,size: 30,color: Colors.white,),
            title: Text('My Orders',style: TextStyle(fontSize: 20,color: Colors.white),),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.favorite,size: 30,color: Colors.red,),
            title: Text('Favorite',style: TextStyle(fontSize: 20,color: Colors.white),),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.one_k,size: 30,color: Colors.white,),
            title: Text('Cart',style: TextStyle(fontSize: 20,color: Colors.white),),
            onTap: (){},
          ),
          SizedBox(height: 300,),






          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Icon(Icons.settings,color: Colors.white,size: 30,),
                SizedBox(width: 10,),
                Text("Settings",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(width: 10,),
                Container(
                  width: 2,
                  height: 30,
                  color: Colors.white,
                ),
                  SizedBox(width: 10,),
                Text("Logout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
