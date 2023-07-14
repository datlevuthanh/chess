import 'package:flutter/material.dart';



class level6 extends StatefulWidget{
  @override
  _level6 createState()=> _level6();
}
class _level6 extends State<level6>{
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
              width: 310,
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
              ],),
         ],),) ],
        ),
      ),
    );
  }
}



