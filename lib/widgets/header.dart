import 'package:flutter/material.dart';

import '../helpers/colors.dart' as color;

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          'Training',
          style: TextStyle(
              fontSize: 30,
              color: color.AppColor.homePageTitle,
              fontWeight: FontWeight.w700),
        ),
        const Spacer(),
        IconButton(
          color: color.AppColor.homePageIcons,
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        IconButton(
          color: color.AppColor.homePageIcons,
          onPressed: () {},
          icon: const Icon(Icons.calendar_today_outlined),
        ),
        IconButton(
          color: color.AppColor.homePageIcons,
          onPressed: () {},
          icon: const Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }
}
