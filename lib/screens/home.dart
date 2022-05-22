import 'package:flutter/material.dart';

import '../helpers/colors.dart' as color;
import '../widgets/nextworkout.dart';
import '../widgets/header.dart';
import '../widgets/details.dart';
import '../widgets/doinggreat.dart';
import '../widgets/areaoffocus.dart';

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
        padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
        child: Column(
          children: const <Widget>[
            Header(),
            SizedBox(
              height: 10,
            ),
            Details(),
            SizedBox(
              height: 20,
            ),
            Nextworkout(),
            Doinggreat(),
            Focusheading(),
            AreaOfFocus(),
          ],
        ),
      ),
    );
  }
}

class Focusheading extends StatelessWidget {
  const Focusheading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Area Of Focus',
          style: TextStyle(
              color: color.AppColor.homePageTitle,
              fontSize: 25,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
