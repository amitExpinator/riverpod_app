import 'package:flutter/material.dart';
import 'package:riverpod_app_example/app/ui/auth/validate_otp_screen.dart';
import 'package:riverpod_app_example/app/widgets/customTextField.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          const Text("Enter Your Mobile Number"),
          const Text("Phone Number"),
          const CustomTextField(keyboardType: TextInputType.phone),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ValidateOtpScreen(),
                ));
              },
              child: const Text("Send OTP"))
        ]),
      ),
    );
  }
}
