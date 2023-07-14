import 'package:flutter/material.dart';
import 'dart:ui';

class level9 extends StatefulWidget{
  @override
  _level9 createState()=> _level9();
}

class _level9 extends State<level9>{
  @override
  late List<List<Widget>>map;
  late List<Offset> chessmanRedposition;
  late List<Offset> chessmanReddeleted;
  late Offset chessmanBlackposition;
  late Offset chessmanBlackdeleted;
  late Offset firstPosition;
  late List<Offset> chessmanBlackRoute;
  late List<Offset> routeshowonmap;
  int score =0;
  late int maxScore;
  Color playerColor = Colors.red;
  String playerState = 'Build the troop' ;

//------------------------------------------------------------------------------
//Chessman Widget

  Widget nonchessman =  Image(
    // key:ValueKey<String>('/Users/datle/StudioProjects/mini_game/assets/pngtree-wooden-chess-image_2276856-removebg-preview.png'),
    image: AssetImage('assets/Giấy-dán-tường-màu-trắng-kẻ-ô-vuông-7910-1-copy.png') ,
  );

  Widget chessmanBack = Image(
    // key:ValueKey<String>('/Users/datle/StudioProjects/mini_game/assets/pngtree-wooden-chess-image_2276856-removebg-preview.png'),
    image: AssetImage('/Users/datle/StudioProjects/mini_game/assets/pngtree-wooden-chess-image_2276856-removebg-preview.png'),
  );

  Widget chessmanRed = Image(
    //  key:ValueKey<String>('/Users/datle/StudioProjects/mini_game/assets/pngtree-art-character-font-design-seal-hai-png-image_10553-removebg-preview.png'),
    image: AssetImage('/Users/datle/StudioProjects/mini_game/assets/pngtree-art-character-font-design-seal-hai-png-image_10553-removebg-preview.png'),
  );

//------------------------------------------------------------------------------ \
//------------------------------------------------------------------------------

// initial
//------------------------------------------------------------------------------
  void initState(){
    super.initState();
    map = List.generate(9,(_)=>List.filled(9,nonchessman ));
    chessmanRedposition = [];
    chessmanReddeleted = [];
    chessmanBlackRoute = [] ;
    routeshowonmap = [];
    maxScore = 0;
    //firstPosition = Offset(0, 0);
  }
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

//put redchessman
//------------------------------------------------------------------------------

  void putRedchessman(row,col)
  {
    if (playerState == 'Build the troop'){
      setState(() {
        if (map[row][col] == nonchessman)
        {
          map[row][col] = chessmanRed as Image;
          chessmanRedposition.add(Offset(row.toDouble(), col.toDouble()));
        }
      });
    }
  }
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

//Black turn
//------------------------------------------------------------------------------

  void buildthTroopdone(){
    setState(() {
      playerState = 'Put your fighter';
      playerColor = Colors.black;
    });
  }

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

//Put the black chessman
//------------------------------------------------------------------------------

  void putBlackchessman(row,col){
    if(playerState == 'Put your fighter'){
      setState(() {
        if(map[row][col]==nonchessman){
          map[row][col] = chessmanBack as Image;
          chessmanBlackposition = Offset(row.toDouble(), col.toDouble());
          print('black position:$chessmanBlackposition');
          //firstPosition = Offset(row.toDouble(), col.toDouble);
          //routeshowonmap.add(Offset(chessmanBlackposition.dx.toDouble(), chessmanBlackposition.dy.toDouble()));
        }
        playerState = 'Ready to a tack';
      });
    }
  }
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

//move
//------------------------------------------------------------------------------

  //Top Direction
  bool isChessmanInTopboder()
  {
    if(chessmanBlackposition.dx ==0 || chessmanBlackposition.dx ==1)
    {
      return true;
    }
    return false;
  }

  bool isAvailableToMoveTop(){
    if(isChessmanInTopboder())
    {
      return false;
    }
    else if(map[chessmanBlackposition.dx.toInt()-1]==nonchessman){
      return false;
    }
    else if(map[chessmanBlackposition.dx.toInt()-1][chessmanBlackposition.dy.toInt()]==chessmanRed
        &&  map[chessmanBlackposition.dx.toInt()-2][chessmanBlackposition.dy.toInt()]==nonchessman)
    {
      return true;
    }
    return false;
  }

  void moveTop(){
    map[chessmanBlackposition.dx.toInt()-1][chessmanBlackposition.dy.toInt()]= nonchessman;
    score++;
    //update Blackposition
    chessmanBlackposition =Offset(chessmanBlackposition.dx -2, chessmanBlackposition.dy);
    //add to chessmanblackroute
    chessmanBlackRoute.add(Offset(chessmanBlackposition.dx.toDouble(), chessmanBlackposition.dy.toDouble()));
    print('up');
  }
  //****************************************************************************
  // Right Direction

  bool isChessmanInRightboder(){
    if(chessmanBlackposition.dy ==8 || chessmanBlackposition.dy ==7){
      return true;
    }
    return false;
  }

  bool isAvailableToMoveRight(){
    if(isChessmanInRightboder())
    {
      return false;
    }
    else if(map[chessmanBlackposition.dy.toInt()+1]==nonchessman){
      return false;
    }
    else if(map[chessmanBlackposition.dx.toInt()][chessmanBlackposition.dy.toInt()+1]==chessmanRed
        &&  map[chessmanBlackposition.dx.toInt()][chessmanBlackposition.dy.toInt()+2]==nonchessman)
    {
      return true;
    }
    return false;
  }

  void moveRight(){
    map[chessmanBlackposition.dx.toInt()][chessmanBlackposition.dy.toInt()+1] = nonchessman;
    score++;
    //update Black position
    chessmanBlackposition = Offset(chessmanBlackposition.dx, chessmanBlackposition.dy+2);
    //add to chessmanblackroute
    chessmanBlackRoute.add(Offset(chessmanBlackposition.dx.toDouble(), chessmanBlackposition.dy.toDouble()));
    print('right');
  }
//******************************************************************************

//*******************************MoveBottom*************************************
  bool isChessManInBottomBoder(){
    if(chessmanBlackposition.dx==8||chessmanBlackposition.dx==7)
    {
      return true;
    }
    return false;
  }

  bool isAvailableToMoveBottom(){
    if(isChessManInBottomBoder())
    {
      return false;
    }
    else if(map[chessmanBlackposition.dx.toInt()+1]==nonchessman)
    {
      return false;
    }
    else if(map[chessmanBlackposition.dx.toInt()+1][chessmanBlackposition.dy.toInt()]==chessmanRed
        && map[chessmanBlackposition.dx.toInt()+2][chessmanBlackposition.dy.toInt()]==nonchessman)
    {
      return true;
    }
    return false;
  }

  void moveBottom() {
    //clear the Red chessman
    map[chessmanBlackposition.dx.toInt()+1][chessmanBlackposition.dy.toInt()] = nonchessman;
    score++;
    //Update new chessmanblack position
    chessmanBlackposition = Offset(chessmanBlackposition.dx+2,chessmanBlackposition.dy);
    //add to chessmanblackroute
    chessmanBlackRoute.add(Offset(chessmanBlackposition.dx.toDouble(), chessmanBlackposition.dy.toDouble()));
    print('bottom');
  }

  //*****************************************************************************

  //Left Direction

  bool isChessManInLeftBoder(){
    if(chessmanBlackposition.dy==1||chessmanBlackposition.dy==0)
    {
      return true;
    }
    return false;
  }

  bool isAvailableToMoveLeft(){
    if(isChessManInLeftBoder())
    {
      return false;
    }
    else if(map[chessmanBlackposition.dy.toInt()-1]==nonchessman)
    {
      return false;
    }
    else if(map[chessmanBlackposition.dx.toInt()][chessmanBlackposition.dy.toInt()-1]==chessmanRed
        && map[chessmanBlackposition.dx.toInt()][chessmanBlackposition.dy.toInt()-2]==nonchessman)
    {
      return true;
    }
    return false;
  }

  void moveLeft() {
    //clear the Red chessman
    map[chessmanBlackposition.dx.toInt()][chessmanBlackposition.dy.toInt()-1] = nonchessman;
    score++;
    //Update new chessmanblack position
    chessmanBlackposition = Offset(chessmanBlackposition.dx,chessmanBlackposition.dy-2);
    //add to chessmanblackroute
    chessmanBlackRoute.add(Offset(chessmanBlackposition.dx.toDouble(), chessmanBlackposition.dy.toDouble()));
    print('left');
  }
//******************************************************************************
//*********************if can not move any direction****************************

  bool CannotMoveAnyDirection(){
    if(!isAvailableToMoveTop()&&!isAvailableToMoveRight()&&!isAvailableToMoveBottom()&&!isAvailableToMoveLeft())
    {
      return true;
    }
    return false;
  }
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

//------------------------------------how to move-------------------------------
//------------------------------------------------------------------------------

  void atack(){

    if(isAvailableToMoveTop())
    {
      moveTop();
      atack();
      chessmanBlackposition = Offset(chessmanBlackposition.dx + 2, chessmanBlackposition.dy);
      chessmanBlackRoute.removeLast();
      //print('${chessmanBlackposition.dx},${chessmanBlackposition.dy}');
      map[chessmanBlackposition.dx.toInt() - 1][chessmanBlackposition.dy.toInt()] = chessmanRed;
      score--;
    }

    if(isAvailableToMoveRight())
    {
      moveRight();
      atack();
      chessmanBlackposition = Offset(chessmanBlackposition.dx, chessmanBlackposition.dy - 2);
      chessmanBlackRoute.removeLast();
      //print('${chessmanBlackposition.dx},${chessmanBlackposition.dy}');
      map[chessmanBlackposition.dx.toInt()][chessmanBlackposition.dy.toInt()+1] = chessmanRed;
      score--;
    }

    if(isAvailableToMoveBottom())
    {
      moveBottom();
      atack();
      chessmanBlackposition = Offset(chessmanBlackposition.dx-2,chessmanBlackposition.dy);
      chessmanBlackRoute.removeLast();
      //print('${chessmanBlackposition.dx},${chessmanBlackposition.dy}');
      map[chessmanBlackposition.dx.toInt()+1][chessmanBlackposition.dy.toInt()] = chessmanRed;
      score--;
    }

    if(isAvailableToMoveLeft())
    {
      moveLeft();
      atack();
      chessmanBlackposition = Offset(chessmanBlackposition.dx, chessmanBlackposition.dy+2);
      chessmanBlackRoute.removeLast();
      map[chessmanBlackposition.dx.toInt()][chessmanBlackposition.dy.toInt()-1]=chessmanRed;
      score--;
    }

    if(CannotMoveAnyDirection()){
      if(score>maxScore)
      {
        maxScore = score;
        routeshowonmap= List.from(chessmanBlackRoute);
      }
      return;
    }
    print(routeshowonmap);
  }
//remove black first position before running game-------------------------------
//------------------------------------------------------------------------------

  void removefirstposition()
  {
    for(int row = 0;row<9;row++){
      for(int col=0;col<9;col++){
        if(map[row][col]==chessmanBack&&(
            isAvailableToMoveTop()|| isAvailableToMoveRight()
                || isAvailableToMoveBottom() || isAvailableToMoveLeft()
        ))
        {
          firstPosition = Offset(row.toDouble(), col.toDouble()) ;
          setState(()
          {
            map[row][col]= nonchessman;
          });
        }
      }
    }
  }

//Update Widget on screen
//------------------------------------------------------------------------------
  Future <void> updatemap() async{
    routeshowonmap.insert(0,Offset(firstPosition.dx, firstPosition.dy));
    for(int i =1; i<routeshowonmap.length;i++){
      setState(() {
        map[routeshowonmap[i].dx.toInt()][routeshowonmap[i].dy.toInt()] = chessmanBack;
        map[((routeshowonmap[i].dx+routeshowonmap[i-1].dx)/2).toInt()][((routeshowonmap[i].dy+routeshowonmap[i-1].dy)/2).toInt()] =nonchessman;
        score = score+1;
      });
      if(i==routeshowonmap.length-1){
        return;
      }
      await Future.delayed(const Duration(milliseconds: 1000));
      setState(() {
        map[routeshowonmap[i].dx.toInt()][routeshowonmap[i].dy.toInt()] = nonchessman;
      });
    }
  }

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

  Future <void> rungame() async
  {
    removefirstposition();
    atack();
    print(routeshowonmap);
    await updatemap();
  }
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

  void replay()
  {
    print('1');
    //reset game state
    routeshowonmap = List.from(chessmanBlackRoute);
    //print(routeshowonmap);
    maxScore = 0;
    playerState = 'Build the troop';
    playerColor = Colors.red;
    score = 0;

    //Clear map
    setState(() {
      for(int row = 0; row<9;row++){
        for(int col = 0; col<9;col++)
        {
          map[row][col]= nonchessman as Image;
        }
      }
    });
  }
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
// Undo

  void undo()
  {
    //in red turn
    if(playerState == 'Build the troop'&& chessmanRedposition.isNotEmpty)
    {
      Offset lastPosition = chessmanRedposition.removeLast();
      chessmanReddeleted.add(Offset(lastPosition.dx, lastPosition.dy));
      setState(()
      {
        map[lastPosition.dx.toInt()][lastPosition.dy.toInt()]=nonchessman;
      });
    }
    //in blackturn
    else if(playerState == 'Ready to a tack'){
      setState(() {
        map[chessmanBlackposition.dx.toInt()][chessmanBlackposition.dy.toInt()] = nonchessman as Image;
        print('blackchess position: ${chessmanBlackposition.dx},${chessmanBlackposition.dy}');
        playerState = 'Put your fighter';
      });
    }
  }

  void redo()
  {
    //in red turn
    if(playerState == 'Build the troop' && chessmanReddeleted.isNotEmpty){
      Offset chessmanDeleted = chessmanReddeleted.removeLast();
      chessmanRedposition.add(Offset(chessmanDeleted.dx, chessmanDeleted.dy));
      setState(() {
        map[chessmanDeleted.dx.toInt()][chessmanDeleted.dy.toInt()]= chessmanRed;
      });
    }
    else if(playerState == 'Put your fighter')
    {
      //in black turn
      setState(()
      {
        map[chessmanBlackposition.dx.toInt()][chessmanBlackposition.dy.round()] = chessmanBack;
        playerState = 'Ready to a tack';
      });
    }
  }
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

// Build map on screen
//------------------------------------------------------------------------------

  Widget bigContainer()
  {
    return Column(
      children:<Widget>[
        for(int row =0; row<9;row++)
          Row(children:<Widget>[
            for(int col=0; col<9;col++)
              myContainer(row,col),
          ],)
      ],
    );
  }

  Widget myContainer (row,col){
    return GestureDetector(
      onTap:()
      {
        if(playerState=='Build the troop')
        {
          return putRedchessman(row, col);
        }
        else if(playerState == 'Put your fighter')
        {
          return putBlackchessman(row, col);
        }
      },
      child:Container(
        child: map[row][col],
        width: 40,
        height: 40,
        decoration:
        BoxDecoration(
          color: Colors.white,
          border: Border.all(color:Colors.black,width:1),
        ),
        //child: Text(mytext),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      backgroundColor: Colors.limeAccent,
      body: SafeArea(
        child:Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 80),
                      child:Text('Player Score: '+ score.toString(),
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child:Text(
                    playerState,
                    style: TextStyle(
                      fontFeatures: [FontFeature.enable('smcp')],
                      fontStyle: FontStyle.italic,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: playerColor,
                    ),
                  ),
                ),
                Container(
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.brown, width: 20),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: bigContainer(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(onPressed: ()=> buildthTroopdone(), child: Text('Ready')),
                    ElevatedButton(onPressed: ()=> rungame(), child: Text('Atack')),
                    ElevatedButton(onPressed: ()=>undo() , child: Text('Undo')),
                    ElevatedButton(onPressed: ()=> redo() , child: Text('Redo')),
                    ElevatedButton(onPressed: ()=>replay() , child: Text('replay')),
                  ],
                )
              ]
          ),
        ),
      ),
    );
  }
}



