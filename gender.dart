import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tett.dart';

class Gender extends StatelessWidget {
  
  final double width;
  final double height;
  final IconData icon;
  final String title;

  //there a differen between icon and iconData
  //child:icon or child:Icon(iconData,size)
  //first one is widget but second is data 

   Gender({ this.width, this.height,this.icon,this.title});
  @override
  Widget build(BuildContext context) {
    return   Container(
                decoration: BoxDecoration(
color: Colors.white30,
borderRadius: BorderRadius.circular(18)
                ),
                width:width * .4,
                
                height:height * .2 ,
                child: Column(
                  children :[

                 Expanded(
                   flex: 2,
                                    child: Icon(
                                      icon
                   ,size:50,
                   color: Colors.white,
                   ),
                 ),

                 Expanded(
                   flex: 1,
                   child: txt(title:title,
                   color:Colors.white,
                   ),
                 )
                  ]
                ),
              );
  }
}