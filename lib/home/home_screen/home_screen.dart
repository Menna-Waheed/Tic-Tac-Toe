import 'package:flutter/material.dart';
import 'package:x_o/core/app_asset.dart';
import 'package:x_o/core/app_color.dart';
import 'package:x_o/core/app_route.dart';
import 'package:x_o/core/app_style.dart';
import 'package:x_o/home/home_screen/widget/x_or_o.dart';
import 'package:x_o/model/player_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(image:AssetImage(AppAsset.backGround,),fit: BoxFit.fill,),


      ),
      child: SafeArea(
        child: Scaffold(

          backgroundColor: Colors.transparent,
          body:Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20,
            vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Pick who goes first?',style: AppStyle.mediam24white,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(AppRoute.playerScreen,
                              arguments:PlayerData(player1: 'x',player2:'o' ) );
                        },
                        child: XOrO(symbol: AppAsset.x,)),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(AppRoute.playerScreen,arguments:PlayerData(player1: 'o',player2:'x' ));
                        },
                        child: XOrO(symbol: AppAsset.o))

                  ],
                )


              ],
            ),
          ) ,
        ),
      ),
    );
  }
}
