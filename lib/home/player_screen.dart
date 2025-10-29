import 'package:flutter/material.dart';
import 'package:x_o/core/app_asset.dart';
import 'package:x_o/core/app_color.dart';
import 'package:x_o/core/app_style.dart';
import 'package:x_o/home/home_screen/widget/board_tile.dart';
import 'package:x_o/home/home_screen/widget/boarder_line.dart';
import 'package:x_o/model/player_data.dart';

class PlayerScreen extends StatefulWidget {
   PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
   List<String>boarderstate=[
     '','','',
     '','','',
     '','','',
   ];
   int player1=0;
   int player2=0;
   String title='Player 1’s Turn';
  late PlayerData arg;
  @override
  Widget build(BuildContext context) {
      arg=ModalRoute.of(context)?.settings.arguments as PlayerData;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin:Alignment.topLeft ,
            end: Alignment.bottomRight,
            colors: [
          AppColor.lightBlueColor,
          AppColor.darkBlueColor
        ]),
      ),
      child: SafeArea(
        child: Scaffold(

          backgroundColor: Colors.transparent,
          body: Padding(
            padding:  EdgeInsets.symmetric(
                horizontal: 20,
            vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(
                    bottom: 10
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(44),
                    color: AppColor.whiteColor
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('player1 (${arg.player1})',style: AppStyle.semiBold32black,),
                            Text('score :$player1',style: AppStyle.semiBold32black,),
                          ],
                        ),

                        Column(
                          children: [
                            Text('player2 (${arg.player2})',style: AppStyle.semiBold32black,),
                            Text('score :$player2',style: AppStyle.semiBold32black,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Text(title,style: AppStyle.bold36white,textAlign: TextAlign.center,),

                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 15,
                      bottom: 20
                    ),
                    decoration:BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(44),
                    ) ,

                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              BoardTile(symbals:
                              boarderstate[0],
                                index:0 ,
                              onBoardClick:onBoardClick ,),
                              BoarderLine(width: 2,height: double.infinity,),
                              BoardTile(symbals: boarderstate[1],
                              onBoardClick: onBoardClick,
                              index:1 ,),
                              BoarderLine(width: 2,height: double.infinity,),
                              BoardTile(symbals: boarderstate[2],index: 2,onBoardClick:onBoardClick ,),

                            ],
                          ),
                        ),

                              BoarderLine(width: double.infinity,height: 2,),
                        Expanded(
                          child: Row(
                            children: [
                              BoardTile(symbals: boarderstate[3],index: 3,onBoardClick:onBoardClick ,),
                              BoarderLine(width: 2,height: double.infinity,),
                              BoardTile(symbals: boarderstate[4],index: 4,onBoardClick:onBoardClick ,),
                              BoarderLine(width: 2,height: double.infinity,),
                              BoardTile(symbals:boarderstate[5],index: 5,onBoardClick:onBoardClick ,),

                            ],
                          ),
                        ),

                        BoarderLine(width: double.infinity,height: 2,),
                        Expanded(
                          child: Row(
                            children: [
                              BoardTile(symbals: boarderstate[6],index: 6,onBoardClick:onBoardClick ,),
                              BoarderLine(width: 2,height: double.infinity,),
                              BoardTile(symbals: boarderstate[7],index: 7,onBoardClick:onBoardClick ,),
                              BoarderLine(width: 2,height: double.infinity,),
                              BoardTile(symbals: boarderstate[8],index: 8,onBoardClick:onBoardClick ,),

                            ],
                          ),
                        ),
                      ],
                    ),


                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  int counter=0;

  void onBoardClick(int index){
   // print(index);

     if(boarderstate[index].isNotEmpty){
       return;
     }
    if(counter%2==0){
        title ='Player 1’s Turn';
      boarderstate[index]='${arg.player1}';



    }else{
      title ='Player 2’s Turn';
      boarderstate[index]='${arg.player2}';

    }
   counter++;
    if(checkWinner('${arg.player1}')){
      title ='Win Player\'s 1 ';
      player1++;

      Future.delayed(Duration(seconds: 2),resetBoard);
    }else if(checkWinner('${arg.player2}')){
      title ='Win Player\'s 2 ';
      player2++;

      Future.delayed(Duration(seconds: 2),resetBoard);
    }else if(counter==9){
      title ='None of Players Win';
      Future.delayed(Duration(seconds: 2),resetBoard);
    }
    setState(() {

    });
  }

  bool checkWinner(String symbol){

    for(int i=0;i<9;i+=3) {
      if (boarderstate[i] == symbol && boarderstate[i + 1] == symbol &&
          boarderstate[i + 2] == symbol) {
        return true;
      }
    }
      for(int i=0;i<3;i++) {
        if (boarderstate[i] == symbol && boarderstate[i + 3] == symbol &&
            boarderstate[i + 6] == symbol) {
          return true;
        }
      }

        if(boarderstate[0]==symbol&&boarderstate[4]==symbol&&boarderstate[8]==symbol){
          return true;
        }

        if(boarderstate[2]==symbol&&boarderstate[4]==symbol&&boarderstate[6]==symbol){
          return true;
        }
        return false;
      }

  void resetBoard() {
    for(int i=0;i<9;i++){
      boarderstate[i]='';
      counter=0;
      setState(() {

      });
    }
  }

    }




