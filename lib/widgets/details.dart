import 'package:flutter/material.dart';

import '../helpers/colors.dart' as color;
import '../screens/videos_info_screen.dart';

class Details extends StatefulWidget {
  const Details({
    Key? key,
  }) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          'Your Program',
          style: TextStyle(
              fontSize: 20,
              color: color.AppColor.homePageTitle,
              fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        Text(
          'Details',
          style: TextStyle(color: color.AppColor.homePageDetail, fontSize: 18),
        ),
        IconButton(
          color: color.AppColor.homePageIcons,
          onPressed: () {
            Navigator.of(context).pushNamed(VideosInfo.routeName);
          },
          icon: const Icon(Icons.arrow_forward),
        ),
      ],
    );
  }
}
