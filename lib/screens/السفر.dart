import 'package:azkar_of_the_muslim/shared/item_design.dart';
import 'package:flutter/material.dart';
import '../data/أذكار_السفر.dart';

class TravelAzkar extends StatelessWidget {

  TravelAzkar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("أذكار السفر"),
          ),
          body: ListView.separated(
              itemBuilder: (context,index) => AzkarItem(model: travel[index]),
              separatorBuilder:(context,index) => const SizedBox(),
              itemCount: travel.length,),
      ),
    );
  }


}
