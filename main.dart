import 'package:flutter/material.dart';
import 'icon_buttom.dart';
import 'tett.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'gender.dart';

void main() => runApp(MaterialApp(home:MyHomePage() ,));
 
	
 
class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
 double _currentSliderValue = 70;
 double _weight = 60;
 double _age = 20;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    //double values =70;
    
    return 
   Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.black,
        //
        
        //The following elevations have defined shadows: 1, 2, 3, 4, 6, 8, 9, 12, 16, 24.
elevation: 8,
        backgroundColor: Color(0xff12153b),
        //title: Text("BMI CALCULATER",),
         centerTitle: true,
         title:txt
         (
           title:"BMI CALCULATOR ",
         color:Colors.white,
         fontWeight:FontWeight.bold
         
         ),


      ), 
      backgroundColor: Color(0xff12153b),
  body: Container(
height: height ,
            width: width,
    child: Column(
      children: [
        Expanded(
          flex: 9,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
            height: height *8,
            width: width,
            child: SingleChildScrollView(
                          child: Column(
                children: <Widget>[
                  Row(
                    //the gender male and gender female bside each other so much what can I do?
                    //
                    //
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Gender(width: width,height: height,title: "Male",icon: FontAwesomeIcons.male,),
                    Gender(width: width,height: height,title: "Female",icon: FontAwesomeIcons.female,)

                    ],
                  ),
SizedBox(height:20,),
Container(
  decoration: BoxDecoration(
  color: Colors.white30,
borderRadius: BorderRadius.circular(18)
  ),
  height: height*.3,
  width: width,
  child:Column(
  children:[
              SizedBox(height:8,),
txt(title:"Height",
color:Colors.white,
size:18,

),
SizedBox(height:15,),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.end,

  children: [
  //title:"183"
txt(title:_currentSliderValue.round().toString(),
align: Alignment.bottomCenter,
color:Colors.white,
size:35,
),
txt(title:"CM",
color:Colors.white70,
size:18,
),




  ],
),
SizedBox(height:20 ,),
//pub.dev ->help you 
Slider(
  activeColor: Colors.black,
  inactiveColor: Colors.white.withOpacity(.5),
  value: _currentSliderValue, 
  label: _currentSliderValue.round().toString(),
  onChanged: (double newvalue){
  setState(() {
              _currentSliderValue =newvalue;
  });
  },
  min:50,
  max:200),

  ]
  )
),

SizedBox(height:20),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
  //here wb cotainer
Container(
  
  decoration: BoxDecoration(
color: Colors.white30,
borderRadius: BorderRadius.circular(18),
  ),
height: height * .26,
width: width*.4,
child: Column(
children: [
Column(
  children: [
                txt(title:"Weight",
  color:Colors.white,    
  size:38,
  
  
  
  ),
  SizedBox(height:18,),
  txt(title:_weight.toString()+" KG",
  color:Colors.white,    
  size:25,
  
  
  
  ),
  SizedBox(height:15),

//[paddmg]


Row(
  mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
  children: [
                Iconbutton(
  
  icon:Icons.minimize,
  
  onPressed: (){
  
  setState(() {
  
              _weight--;
  
  });
  
  
  
  },
  
  
  
  ),
  Iconbutton(
icon:Icons.add,
onPressed: (){
setState(() {
  _weight++;
});

},

),
  ],
),
  ],
),

],

),
),

Container(
  
  decoration: BoxDecoration(
color: Colors.white30,
borderRadius: BorderRadius.circular(18),
  ),
height: height * .25,
width: width*.4,
child: Column(
children: [
Column(
  children: [
                txt(title:"Age",
  color:Colors.white,    
  size:35,
  
  
  
  ),
  SizedBox(height:18,),
  txt(title:_age.toString(),
  color:Colors.white,    
  size:25,
  
  
  
  ),
  SizedBox(height:15),

//[paddmg]


Row(
  mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
  children: [
                Iconbutton(
  
  icon:Icons.minimize,
  
  onPressed: (){
  
  setState(() {
  
              _age--;
  
  });
  
  
  
  },
  
  
  
  ),
  Iconbutton(
icon:Icons.add,
onPressed: (){
setState(() {
  _age++;
});

},

),
  ],
),
  ],
),

],

),
),








//hohohohoh
//
  ],


),

                ],

              ),
            ),
          ),
                    ),
        ),
Expanded(
  child:   Container(
    width : width,
    height: height*.1,
    color:Colors.white,
    child: FlatButton(

      child: txt(title:"Calculate your BMI",fontWeight:FontWeight.bold,size:17),
      onPressed: (){

print("${_weight / (_currentSliderValue * _currentSliderValue) }");

showDialog(context: context, builder: (context)=>AlertDialog(

title: txt(title:"Your BMI"),
content: txt(title:(_weight/(_currentSliderValue*_currentSliderValue)).toString(),)

),


);

//show dialog





      },

    ),
    
  ),


),

      ],
    ),
  ),
    



    );
 }

}



