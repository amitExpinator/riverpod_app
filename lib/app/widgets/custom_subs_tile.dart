import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:riverpod_app_example/app/constants/app_colors.dart';

class CustomSubscriptionTile extends StatelessWidget {
  final String name;
  final String logo;

  const CustomSubscriptionTile(
      {super.key, required this.name, required this.logo});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: AppColors.oldPaper,
      leading: SvgPicture.asset(logo),
      title: Text(name),
      subtitle: const Text("Expires in 399 days"),
      trailing: const Text('\u{20B9} 900'),
    );
  }
}
