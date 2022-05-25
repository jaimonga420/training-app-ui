import 'package:flutter/material.dart';

import '../helpers/colors.dart' as color;
import '../widgets/videos_list.dart';

class Tutorials extends StatefulWidget {
  const Tutorials({Key? key}) : super(key: key);

  @override
  State<Tutorials> createState() => _TutorialsState();
}

class _TutorialsState extends State<Tutorials> {
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
                const SizedBox(
                  width: 90,
                ),
                Icon(
                  Icons.loop_outlined,
                  color: color.AppColor.loopColor,
                ),
                const Text(
                  '3 Sets',
                  style: TextStyle(),
                )
              ],
            ),
            const VideosList(),
          ],
        ),
      ),
    ));
  }
}
