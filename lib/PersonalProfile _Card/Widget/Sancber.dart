import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../StudentProfileCard/Widget/TextDesign.dart';


void showMySnackBarMasses(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content:Row(children: [
        TextDesign(text: 'Followed Successfully ', fontSize: 10.sp, color: Colors.white),
        SizedBox(width: 10.w),
        Icon(Icons.check_box, size: 15.sp,color: Colors.green[900],),

      ],),
      duration: Duration(seconds: 2),
    ),
  );
}