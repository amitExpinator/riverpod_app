import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:riverpod_app_example/app/constants/app_colors.dart';

class CustomSubItems extends StatelessWidget {
  final String logo;
  final String text;
  const CustomSubItems({super.key, required this.logo, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: AppColors.amber,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(children: [
            SvgPicture.asset(
              logo,
              height: 50,
              width: 50,
            ),
            Text(text),
          ]),
        ),
        OutlinedButton(
            style: OutlinedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width * .2,
                    MediaQuery.of(context).size.height * .01)),
            onPressed: () {},
            child: const Text("+Add"))
      ],
    );
  }
}
