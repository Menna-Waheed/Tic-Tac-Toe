import 'package:flutter/material.dart';
import 'package:x_o/core/app_asset.dart';
import 'package:x_o/core/app_color.dart';
import 'package:x_o/core/app_style.dart';
import 'package:x_o/home/home_screen/widget/board_tile.dart';
import 'package:x_o/home/home_screen/widget/boarder_line.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  child: Text('00:05',style: AppStyle.semiBold32black,),
                ),
                
                Text('Player 1’s Turn',style: AppStyle.bold36white,textAlign: TextAlign.center,),
                
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
                              BoardTile(symbals: AppAsset.o),
                              BoarderLine(width: 2,height: double.infinity,),
                              BoardTile(symbals: AppAsset.x),
                              BoarderLine(width: 2,height: double.infinity,),
                              BoardTile(symbals: AppAsset.x),

                            ],
                          ),
                        ),

                              BoarderLine(width: double.infinity,height: 2,),
                        Expanded(
                          child: Row(
                            children: [
                              BoardTile(symbals: AppAsset.x),
                              BoarderLine(width: 2,height: double.infinity,),
                              BoardTile(symbals: ''),
                              BoarderLine(width: 2,height: double.infinity,),
                              BoardTile(symbals: ''),

                            ],
                          ),
                        ),

                        BoarderLine(width: double.infinity,height: 2,),
                        Expanded(
                          child: Row(
                            children: [
                              BoardTile(symbals: AppAsset.x),
                              BoarderLine(width: 2,height: double.infinity,),
                              BoardTile(symbals: AppAsset.x),
                              BoarderLine(width: 2,height: double.infinity,),
                              BoardTile(symbals: AppAsset.x),

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
}
