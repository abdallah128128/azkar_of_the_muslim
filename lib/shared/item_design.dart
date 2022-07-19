import 'package:azkar_of_the_muslim/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/akar_item_model.dart';

class AzkarItem extends StatelessWidget {

  final ItemModel model;

   AzkarItem({
    Key? key, required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xff3f414a),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(13),
      margin: const EdgeInsets.all(15),
      child: Column(
        //mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            child: Text(
              model.title,
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 22.sp, color: Colors.orange,fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            model.core,
            style: TextStyle(fontSize: 18.sp,color: const Color(0xffdedbd6)),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            model.hint,
            style: TextStyle(fontSize: 16.sp, color: const Color(0xff61845b),fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 10,
          ),
          CounterView(
              initNumber: 0, counterCallback: (int n){},
              increaseCallback: (){},
              decreaseCallback: (){},
              minNumber: 0,
          ),
        ],
      ),
    );
  }
}
