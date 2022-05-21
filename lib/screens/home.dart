import 'package:flutter/material.dart';

import '../helpers/colors.dart' as color;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Training',
                  style: TextStyle(
                      fontSize: 30,
                      color: color.AppColor.homePageTitle,
                      fontWeight: FontWeight.w700),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios_new),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.calendar_today_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
