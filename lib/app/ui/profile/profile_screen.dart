import 'package:flutter/material.dart';
import 'package:riverpod_app_example/app/ui/auth/auth_screen.dart';
import 'package:riverpod_app_example/app/ui/profile/complaint_tracking/complaint_tracking_screen.dart';
import 'package:riverpod_app_example/app/ui/profile/components/about_us_screen.dart';
import 'package:riverpod_app_example/app/ui/profile/components/account_screen.dart';
import 'package:riverpod_app_example/app/ui/profile/components/complaint/complaint_registration_screen.dart';
import 'package:riverpod_app_example/app/ui/profile/components/help_and_support_screen.dart';
import 'package:riverpod_app_example/app/ui/profile/components/notification_settings_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext ctx, BoxConstraints constraints) {
        return SafeArea(
          child: Scaffold(
            body: Padding(
              padding: EdgeInsets.only(
                  top: constraints.maxHeight * .03,
                  bottom: constraints.maxHeight * .1,
                  left: constraints.maxWidth * .05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  infoWidget(
                    icon: Icons.person,
                    text: "Account",
                    context: context,
                    navigatedScreen: const AccountScreen(),
                  ),
                  infoWidget(
                      context: context,
                      icon: Icons.circle_notifications_rounded,
                      navigatedScreen: const NotificationSettingScreen(),
                      text: "Notification Settings"),
                  infoWidget(
                      icon: Icons.card_giftcard_rounded,
                      navigatedScreen: const AccountScreen(),
                      text: "Invite",
                      context: context),
                  infoWidget(
                      context: context,
                      icon: Icons.question_mark_outlined,
                      navigatedScreen: const HelpAndSupportScreen(),
                      text: "Help & Support"),
                  infoWidget(
                    icon: Icons.info,
                    navigatedScreen: const AboutUsScreen(),
                    text: "About",
                    context: context,
                  ),
                  infoWidget(
                    icon: Icons.warning,
                    navigatedScreen: const ComplaintRegistrationScreen(),
                    text: "Complaint",
                    context: context,
                  ),
                  infoWidget(
                      context: context,
                      icon: Icons.track_changes_outlined,
                      navigatedScreen: const ComplaintTrackingScreen(),
                      text: "Complaint Tracking"),
                  infoWidget(
                    icon: Icons.logout,
                    navigatedScreen: const AuthScreen(),
                    text: "Log Out",
                    context: context,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget infoWidget(
      {required IconData icon,
      required String text,
      required context,
      required Widget navigatedScreen}) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => navigatedScreen,
        ));
      },
      child: Container(
        child: Row(children: [
          Icon(icon),
          const SizedBox(
            width: 30.0,
          ),
          Text(text),
        ]),
      ),
    );
  }
}
