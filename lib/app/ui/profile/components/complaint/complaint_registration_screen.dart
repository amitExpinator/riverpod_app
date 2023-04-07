import 'package:flutter/material.dart';
import 'package:riverpod_app_example/app/ui/profile/components/complaint/sub_component/search_transaction.dart';
import 'package:riverpod_app_example/app/widgets/customTextField.dart';

class ComplaintRegistrationScreen extends StatelessWidget {
  const ComplaintRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Complaint Registration"),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SearchTransactionScreen(),
                    ));
                  },
                  child: const Text("Search Transaction"),
                ),
                Row(
                  children: const [
                    Icon(Icons.mode_standby_rounded),
                    Text("Transaction"),
                  ],
                ),
                const CustomTextField(keyboardType: TextInputType.text),
                const Align(alignment: Alignment.center, child: Text("OR")),
                const Text("Mobile Number"),
                const CustomTextField(keyboardType: TextInputType.phone),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: constraints.maxWidth * .45,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Start Date"),
                          CustomTextField(
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
                              keyboardType: TextInputType.datetime),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: constraints.maxWidth * .45,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("End Date"),
                          CustomTextField(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1900),
                                    lastDate: DateTime.now(),
                                  );
                                },
                                icon: const Icon(Icons.calendar_month_outlined),
                              ),
                              keyboardType: TextInputType.datetime),
                        ],
                      ),
                    ),
                  ],
                ),
                const Text("Complaint Disposition"),
                const CustomTextField(keyboardType: TextInputType.text),
                const Text("Complaint Description"),
                const CustomTextField(keyboardType: TextInputType.text),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("SUBMIT"),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
