

import 'package:flutter/material.dart';

class Iconbutton extends StatelessWidget {
final Function onPressed;
final IconData icon ;

 Iconbutton({this.onPressed, this.icon}) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Row(
  
    children: [
  
          Container(
  
            decoration: BoxDecoration(  
  
        color: Colors.white70,
  
           shape: BoxShape.circle
  
              ),
  
            child: IconButton(
   color:Colors.black,
        icon: Icon(icon,size:30,),    
  
      onPressed: onPressed,
      
      ),
  
          ),
  
    ],
  
  ),
);

  }
}