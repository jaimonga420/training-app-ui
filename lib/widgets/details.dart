import 'package:flutter/material.dart';

import '../helpers/colors.dart' as color;

class Details extends StatelessWidget {
  const Details({
    Key? key,
  }) : super(key: key);

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
          onPressed: () {},
          icon: const Icon(Icons.arrow_forward),
        ),
      ],
    );
  }
}
