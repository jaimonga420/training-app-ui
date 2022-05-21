import 'package:flutter/material.dart';

import '../helpers/colors.dart' as color;

class Nextworkout extends StatelessWidget {
  const Nextworkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 220,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.AppColor.gradientFirst.withOpacity(0.8),
              color.AppColor.gradientSecond.withOpacity(0.9),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(80),
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
                color: color.AppColor.gradientSecond.withOpacity(0.4),
                blurRadius: 10,
                offset: const Offset(5, 10))
          ]),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 25,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Next Workout',
              style: TextStyle(
                  color: color.AppColor.homePageContainerTextSmall,
                  fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                'Legs Toning & Glutens Workout',
                style: TextStyle(
                    color: color.AppColor.homePageContainerTextBig,
                    fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.timer,
                      color: color.AppColor.homePageContainerTextSmall,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      '60 Mins',
                      style: TextStyle(
                          color: color.AppColor.homePageContainerTextSmall),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_circle_fill,
                      size: 50,
                      color: Colors.white,
                      shadows: [
                        BoxShadow(
                            color: color.AppColor.gradientFirst,
                            blurRadius: 20,
                            offset: const Offset(4, 8))
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
