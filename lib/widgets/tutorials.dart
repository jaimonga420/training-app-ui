import 'dart:convert';

import 'package:flutter/material.dart';

import '../helpers/colors.dart' as color;

class Tutorials extends StatefulWidget {
  const Tutorials({Key? key}) : super(key: key);

  @override
  State<Tutorials> createState() => _TutorialsState();
}

class _TutorialsState extends State<Tutorials> {
  var _tutorialsList = [];

  _initData() {
    DefaultAssetBundle.of(context).loadString('json/info.json').then((value) {
      _tutorialsList = json.decode(value);
    });
  }

  @override
  void initState() {
    _initData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(70),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Circuit 1 : Legs Toning',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: color.AppColor.circuitsColor,
                  ),
                ),
                SizedBox(
                  width: 90,
                ),
                Icon(
                  Icons.loop_outlined,
                  color: color.AppColor.loopColor,
                ),
                Text(
                  '3 Sets',
                  style: TextStyle(),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
