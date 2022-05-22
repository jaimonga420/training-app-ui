import 'dart:convert';

import 'package:flutter/material.dart';

import '../helpers/colors.dart' as color;

class AreaOfFocus extends StatefulWidget {
  const AreaOfFocus({Key? key}) : super(key: key);

  @override
  State<AreaOfFocus> createState() => _AreaOfFocusState();
}

class _AreaOfFocusState extends State<AreaOfFocus> {
  var _muscleList = [];

  _initData() {
    DefaultAssetBundle.of(context).loadString('json/info.json').then((value) {
      _muscleList = json.decode(value);
    });
  }

  @override
  void initState() {
    _initData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Expanded(
      child: OverflowBox(
          maxWidth: deviceSize.width,
          child: ListView.builder(
              itemCount: _muscleList.length.toDouble() ~/ 2,
              itemBuilder: (context, index) {
                int a = index * 2;
                int b = index * 2 + 1;
                return Row(
                  children: [
                    Container(
                      height: 150,
                      width: (deviceSize.width - 90) / 2,
                      margin: const EdgeInsets.only(left: 30, bottom: 30),
                      padding: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(_muscleList[a]['img']),
                          ),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 3,
                                offset: const Offset(5, 5),
                                color: color.AppColor.gradientFirst
                                    .withOpacity(0.1)),
                            BoxShadow(
                                blurRadius: 3,
                                offset: const Offset(-5, -5),
                                color: color.AppColor.gradientFirst
                                    .withOpacity(0.1))
                          ]),
                      child: Center(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            _muscleList[a]['title'],
                            style: TextStyle(
                                color: color.AppColor.homePageDetail,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 150,
                      width: (deviceSize.width - 90) / 2,
                      margin: const EdgeInsets.only(left: 30, bottom: 30),
                      padding: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(_muscleList[b]['img']),
                          ),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 3,
                                offset: const Offset(5, 5),
                                color: color.AppColor.gradientFirst
                                    .withOpacity(0.1)),
                            BoxShadow(
                                blurRadius: 3,
                                offset: const Offset(-5, -5),
                                color: color.AppColor.gradientFirst
                                    .withOpacity(0.1))
                          ]),
                      child: Center(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            _muscleList[b]['title'],
                            style: TextStyle(
                                color: color.AppColor.homePageDetail,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    )
                  ],
                );
              })),
    );
  }
}
