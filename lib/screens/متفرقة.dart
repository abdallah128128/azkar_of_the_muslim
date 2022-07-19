import 'package:azkar_of_the_muslim/shared/item_design.dart';
import 'package:flutter/material.dart';
import '../data/أذكار_متفرقة.dart';

class OtherAzkar extends StatelessWidget {

  OtherAzkar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("أذكار متفرقة"),
          ),
          body: ListView.separated(
              itemBuilder: (context,index) => AzkarItem(model: other[index]),
              separatorBuilder:(context,index) => const SizedBox(),
              itemCount: other.length,),
      ),
    );
  }


}
