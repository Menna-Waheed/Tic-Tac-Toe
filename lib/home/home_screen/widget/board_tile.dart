import 'package:flutter/material.dart';

class BoardTile extends StatelessWidget {
  BoardTile({super.key, required this.symbals});
  String symbals;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: symbals.isEmpty ? Container() : Image.asset(symbals),
    );
  }
}
