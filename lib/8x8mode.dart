import 'package:flutter/material.dart';



class level8 extends StatefulWidget{
  @override
  _level8 createState()=> _level8();
}
class _level8 extends State<level8>{
  @override
  Widget myContainer (){
    return Container(

      width: 45,
      height: 45,
      decoration: BoxDecoration(color: Colors.white,
          border: Border.all(color:Colors.black,width:1)
      ),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      backgroundColor: Colors.limeAccent,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.brown, width: 20),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
                myContainer(),
              ],),
        ],),),  ],
        ),
      ),
    );
  }
}



