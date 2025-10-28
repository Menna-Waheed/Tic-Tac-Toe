import 'package:flutter/material.dart';
import 'package:x_o/core/app_color.dart';

import '../../../core/app_asset.dart';

class XOrO extends StatelessWidget {
   XOrO({super.key,required this.symbol});
   String symbol;
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(32),
        margin: EdgeInsets.symmetric(
          vertical: height*0.02,
          horizontal: width*0.02
        ),

      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadiusGeometry.circular(32),
      ),
      child: Image.asset(symbol),
    );
  }
}
