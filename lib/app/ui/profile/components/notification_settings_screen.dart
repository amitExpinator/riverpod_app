import 'package:flutter/material.dart';

class NotificationSettingScreen extends StatelessWidget {
  const NotificationSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          const Text("Receive Notifications as"),
          radioBtnWidget(text: "SMS"),
          radioBtnWidget(text: "Whatsapp"),
          radioBtnWidget(text: "Email"),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Save"),
          )
        ]),
      ),
    );
  }

  Widget radioBtnWidget({required String text}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text),
        Switch(value: true, onChanged: (_) {}),
      ],
    );
  }
}
