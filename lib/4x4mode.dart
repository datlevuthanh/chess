import 'package:flutter/material.dart';


/*enum imagePath{
  '/Users/datle/StudioProjects/mini_game/assets/pngtree-wooden-chess-image_2276856-removebg-preview.png',
        '/Users/datle/StudioProjects/mini_game/assets/pngtree-art-character-font-design-seal-hai-png-image_10553-removebg-preview.png',
        '/Users/datle/StudioProjects/mini_game/assets/co-removebg-preview.png'
}*/

class level4 extends StatefulWidget{
  @override
 _level4 createState()=> _level4();
}
class _level4 extends State<level4>{
  @override
  late List<List<Image>>chessman;

  Widget nonchessman =  Image(
    // key:ValueKey<String>('/Users/datle/StudioProjects/mini_game/assets/pngtree-wooden-chess-image_2276856-removebg-preview.png'),
    image: AssetImage('/Users/datle/StudioProjects/mini_game/assets/none.jpeg') ,
  );
  Widget chessmanBack = Image(
   // key:ValueKey<String>('/Users/datle/StudioProjects/mini_game/assets/pngtree-wooden-chess-image_2276856-removebg-preview.png'),
    image: AssetImage('/Users/datle/StudioProjects/mini_game/assets/pngtree-wooden-chess-image_2276856-removebg-preview.png'),
  );
  Widget chessmanRed = Image(
  //  key:ValueKey<String>('/Users/datle/StudioProjects/mini_game/assets/pngtree-art-character-font-design-seal-hai-png-image_10553-removebg-preview.png'),
    image: AssetImage('/Users/datle/StudioProjects/mini_game/assets/pngtree-art-character-font-design-seal-hai-png-image_10553-removebg-preview.png'),
  );
  late bool turn ;
  void initState() {
    super.initState();
    initializeChess();
  }

  void initializeChess(){
    chessman = List.generate(4, (_) => List.filled(4,nonchessman as Image));
    turn = true;
  }
  void playerTap(int row, int col){
    setState(() {
      print('b');
      if(chessman[row][col] == nonchessman as Image){
        print('a');
        if(turn ){
          chessman[row][col]= chessmanRed as Image;
          turn = false;
        }else{
          chessman[row][col]= chessmanBack as Image;
          turn = true;
        }
      }
    });

  }

  Widget bigContainer(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        for(int row =0;row<4;row++)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              for(int col =0;col<4;col++)
                myContainer( row,col)
            ],
          )
      ],
    );
  }
  Widget myContainer (row,col){
    return GestureDetector(
      child:Container(
        child: chessman[row][col],
        width: 45,
        height: 45,
        decoration: BoxDecoration(color: Colors.white,
        border: Border.all(color:Colors.black,width:1)
      ),
    ),
      onTap: ()=>playerTap(row, col),
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
            width: 220,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.brown, width: 20),
              borderRadius: BorderRadius.circular(20),
            ),
            child: bigContainer(),),
      ],
      ),
      ),
      );

  }


}






