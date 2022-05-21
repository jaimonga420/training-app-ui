import 'package:flutter/material.dart';

import '../helpers/colors.dart' as color;

class Doinggreat extends StatelessWidget {
  const Doinggreat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 180,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage('assets/images/card.png'),
                    fit: BoxFit.fill),
                boxShadow: [
                  BoxShadow(
                      color: color.AppColor.gradientSecond.withOpacity(0.3),
                      offset: const Offset(8, 10),
                      blurRadius: 40),
                  BoxShadow(
                      color: color.AppColor.gradientSecond.withOpacity(0.3),
                      offset: const Offset(-1, -5),
                      blurRadius: 10)
                ]),
          ),
          Container(
              height: 200,
              width: double.infinity,
              margin: const EdgeInsets.only(right: 200, bottom: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/images/figure.png'),
                ),
              )),
          Container(
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 150, top: 40),
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'You\'re Doing Great',
                  style: TextStyle(
                      color: color.AppColor.homePageDetail,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Keep it up\n',
                    style: TextStyle(
                        color: color.AppColor.homePagePlanColor, fontSize: 16),
                    children: const [
                      TextSpan(text: 'stick to your plan'),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
