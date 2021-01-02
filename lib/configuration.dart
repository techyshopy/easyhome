import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryGreen = Colors.blueAccent;
List<BoxShadow> shadowList =[
  BoxShadow(color: Colors.grey[300], blurRadius: 30,offset: Offset(0,10))
];

List<Map> categories =[
  {'name' : 'name','iconpath':'3'},
  {'name' : 'name2','iconpath':'2'},
  {'name' : 'name3','iconpath':'1'},
];

List<Map> drawerItems =[
  {'icon' : FontAwesomeIcons.dashcube,'title':'Dashboard'},
  {'icon' : FontAwesomeIcons.dashcube,'title':'Dashboard'},
  {'icon' : FontAwesomeIcons.dashcube,'title':'Dashboard'},
  {'icon' : FontAwesomeIcons.dashcube,'title':'Dashboard'},
];
