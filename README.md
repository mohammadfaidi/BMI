# BMI

note 
---
boxdECORATION
inside cotainer 
color will be inside container


font awestome 9.0.0 need tp pubv.get 
and 9.0.0 
need to import library and sdk >2 
upgrade flutter ->the solution


to solve problem :
 final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    need to return scafffold not materian App
    
    
void main() => runApp(MaterialApp(home:MyHomePage() ,));

  return 
   Scaffold(
      appBar: AppBar(
      
      
dependencies:
  flutter:
    sdk: flutter

  font_awesome_flutter:  ^9.0.0
  
How to align widgets

To align a child widget within its parent you use the Align widget. If you know how to use the Center widget then you are the right track because Center is just a special case of Align.

Wrap the widget you wish to align with the Align widget and set its alignment property. For example, this would align a text widget to the middle right of the parent.

Align(
  alignment: Alignment.centerRight,
  child: Text("widget"),
)

Other options are

    Alignment.topLeft
    Alignment.topCenter
    Alignment.topRight
    Alignment.centerLeft
    Alignment.center
    Alignment.centerRight
    Alignment.bottomLeft
    Alignment.bottomCenter
    Alignment.bottomRight

Here is what that looks like:

  

if we have some componet or container and different color or position to prvent to duplociate we do seperate widget customize and in main.dart just need to call constrictarr with parameters ..
this make more performance 



  //The following elevations have defined shadows: 1, 2, 3, 4, 6, 8, 9, 12, 16, 24.
elevation: 8,



backgroundColor: Color(0xff12153b),


to make responsive and fit with all mobile 

 Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;


container (
height * 0.4
width * 0.2
Text ...

take container fit the quarter in all screen /tables/ios /small phone ...etc



mainAxisAligment and cross just in coloumn and row 
expanded work outside or ... 



 decoration: BoxDecoration(
color: Colors.white30,
borderRadius: BorderRadius.circular(18)
                ),
                
                
                
                
                Container(
               height: height *8,
            width: width,
                
