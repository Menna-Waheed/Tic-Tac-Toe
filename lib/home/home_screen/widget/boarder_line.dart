import 'package:flutter/material.dart';

import '../../../core/app_color.dart';

class BoarderLine extends StatelessWidget {

   BoarderLine({this.height=double.infinity,this.width=double.infinity});
   double height;
   double width;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: width,
      height: height,
      color: AppColor.blackColor,
    );
  }
}
