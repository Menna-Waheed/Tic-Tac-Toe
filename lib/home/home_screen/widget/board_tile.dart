import 'package:flutter/material.dart';
 typedef OnBoardClick=void Function(int);
class BoardTile extends StatelessWidget {
  BoardTile({super.key, required this.symbals,required this.onBoardClick,required this.index});
  String symbals;
  OnBoardClick onBoardClick;
  int index;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
          onTap: () {
           onBoardClick(index);
          },
          child: symbals.isEmpty ? Container() : Image.asset('assets/images/$symbals.png')),
    );
  }
}
