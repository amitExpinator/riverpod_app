import 'package:flutter/material.dart';
import 'package:riverpod_app_example/app/widgets/customTextField.dart';
import 'package:riverpod_app_example/app/widgets/query_type_widget.dart';

class ComplaintTrackingScreen extends StatelessWidget {
  const ComplaintTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Complaint Tracking"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          const Text("Search Transaction"),
          const CustomQueryTypeWidget(
            text: "Transaction",
          ),
          const CustomTextField(keyboardType: TextInputType.text),
          ElevatedButton(
            onPressed: () {},
            child: const Text("VIEW"),
          )
        ]),
      ),
    );
  }
}
