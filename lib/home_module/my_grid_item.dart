import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class MyGridItem extends StatelessWidget {
  final IconData icon;
  final String title;
  GestureTapCallback? onClick;
  MyGridItem({
    Key? key,
    required this.icon,
    required this.title,
    this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: SizedBox(
        height: 150.h,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 75.w,
              height: 70.h,
              decoration: BoxDecoration(
                color: const Color(0xff3f414a),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Icon(icon,color: const Color(0xffa28a64),),
            ),
            Text(
              title,
              overflow:TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.sp,),
            )
          ],
        ),
      ),
    );
  }
}
