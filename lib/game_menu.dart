import 'package:flutter/material.dart';
import 'package:mini_game/4x4mode.dart';
import 'package:mini_game/5x5mode.dart';
import 'package:mini_game/6x6mode.dart';
import 'package:mini_game/7x7mode.dart';
import 'package:mini_game/8x8mode.dart';
import 'package:mini_game/9x9mode.dart';
import 'main.dart';

class game_menu extends StatefulWidget{
  @override
  _game_menu createState() => _game_menu();
}
class _game_menu extends State<game_menu>{

  @override
  Widget custombutton(Widget mybutton){
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle
      ),
      width: 80,
      height: 40,
      margin: EdgeInsets.all(15),
      child: mybutton,
    );
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.limeAccent,
      appBar: AppBar(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(18)
          ),
        shadowColor: Colors.black,
        title: Text('Go Chess'),
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
          fontStyle: FontStyle.italic
        ),
      ),
      body: Container(
        child: Center(
          child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Container(
           // padding: EdgeInsets.all(5),
            //child:
          Flexible(
            flex: 1,
            child: Image(
            width: 550,
              image: AssetImage('/Users/datle/StudioProjects/mini_game/assets/co-removebg-preview.png')
              ),
      ),
            //),
           // Container(
            //padding: EdgeInsets.symmetric(vertical:40),
            //child:
          Flexible(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
              Container(
                child: Text(
                'Choose play mode',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600,
                    fontSize: 45,
                  ),
             ),),
           // ),
                custombutton(ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>level4()),);}, child:Text ('4x4',style: TextStyle(fontSize: 20,fontWeight:FontWeight.w900),)),),
                custombutton(ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>level5()),);}, child:Text ('5x5',style: TextStyle(fontSize: 20,fontWeight:FontWeight.w900),)),),
                custombutton(ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>level6()),);}, child:Text ('6x6',style: TextStyle(fontSize: 20,fontWeight:FontWeight.w900),)),),
                custombutton(ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>level7()),);}, child:Text ('7x7',style: TextStyle(fontSize: 20,fontWeight:FontWeight.w900),)),),
                custombutton(ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>level8()),);}, child:Text ('8x8',style: TextStyle(fontSize: 20,fontWeight:FontWeight.w900),)),),
                custombutton(ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>level9()),);}, child:Text ('9x9',style: TextStyle(fontSize: 20,fontWeight:FontWeight.w900),)),),
          ],
          ),
          ),
          ],
        ),
        )
      )
    ),
    );
  }
}
