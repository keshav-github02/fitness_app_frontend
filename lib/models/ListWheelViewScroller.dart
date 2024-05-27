import 'package:fitness_app_live/constants/color.dart';
import 'package:flutter/material.dart';

class listwheelScrollView extends StatelessWidget {
  final List<String> items;
  const listwheelScrollView({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return ListWheelScrollView(
        magnification: 1.3,
        useMagnifier: true,
        overAndUnderCenterOpacity: 0.24,
        physics: FixedExtentScrollPhysics(),
        controller: FixedExtentScrollController(initialItem: items.length ~/3),
        itemExtent: 50,
        // onSelectedItemChanged: (index){
        //   print(index);
        // },
        diameterRatio: 1.5,
        children: items.map((level) {
          return Text(
            level,
            style: TextStyle(
                fontSize: 24, color: PrimaryColor, fontWeight: FontWeight.bold),
          );
        }).toList());
  }
}
