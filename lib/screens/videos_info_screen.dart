import 'package:flutter/material.dart';

import '../helpers/colors.dart' as color;
import '../widgets/tutorials.dart';
import './home_screen.dart';

class VideosInfo extends StatefulWidget {
  static const routeName = '/videosinfo';
  const VideosInfo({Key? key}) : super(key: key);

  @override
  State<VideosInfo> createState() => _VideosInfoState();
}

class _VideosInfoState extends State<VideosInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            color.AppColor.gradientFirst.withOpacity(0.9),
            color.AppColor.gradientSecond
          ], begin: const FractionalOffset(0, 0.4), end: Alignment.topRight),
        ),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Home.routeName);
                        
                      },
                      icon: Icon(Icons.arrow_back_ios),
                      color: color.AppColor.secondPageTopIconColor,
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.info_outline),
                      color: color.AppColor.secondPageTopIconColor,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 30, right: 20),
                child: Row(
                  children: [
                    Text(
                      'Legs Toning & Glutes Workout',
                      style: TextStyle(
                          color: color.AppColor.secondPageTitleColor,
                          fontSize: 25),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 60, left: 30, right: 20, bottom: 40),
                child: Row(
                  children: [
                    Container(
                      width: 90,
                      height: 30,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            color.AppColor.secondPageContainerGradient1stColor,
                            color.AppColor.secondPageContainerGradient2ndColor
                          ]),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.timer_outlined,
                            color: color.AppColor.secondPageIconColor,
                            size: 16,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '68 Mins',
                            style: TextStyle(
                                color: color.AppColor.secondPageIconColor,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 200,
                      height: 30,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            color.AppColor.secondPageContainerGradient1stColor,
                            color.AppColor.secondPageContainerGradient2ndColor
                          ]),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.handyman_outlined,
                            color: color.AppColor.secondPageIconColor,
                            size: 16,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Resistent Band, Kettebell',
                            style: TextStyle(
                                color: color.AppColor.secondPageIconColor,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Tutorials(),
            ],
          ),
        ),
      ),
    );
  }
}
