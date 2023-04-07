import 'package:flutter/material.dart';
import 'package:riverpod_app_example/app/widgets/customTextField.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  // var items = ["Male", "FeMale", "Other"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account"),
      ),
      body: LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("First Name"),
                const CustomTextField(
                  keyboardType: TextInputType.name,
                ),
                const Text("Last Name"),
                const CustomTextField(
                  keyboardType: TextInputType.name,
                ),
                const Text("Phone Number"),
                const CustomTextField(
                  keyboardType: TextInputType.phone,
                ),
                const Text("Email Address"),
                const CustomTextField(
                  keyboardType: TextInputType.emailAddress,
                ),
                const Text("DOB"),
                CustomTextField(
                  keyboardType: TextInputType.datetime,
                  suffixIcon: IconButton(
                    onPressed: () {
                      showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime.now());
                    },
                    icon: const Icon(Icons.calendar_month_outlined),
                  ),
                ),
                const Text("Gender"),
                const Text("Currency")
              ],
            ),
          );
        },
      ),
    );
  }

  // Widget dropdown(){
  //   return DropdownButton(items: [
  //     DropDownMenu
  //   ], onChanged: onChanged)
  // }
}
