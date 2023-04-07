import 'package:flutter/material.dart';
import 'package:riverpod_app_example/app/widgets/customTextField.dart';
import 'package:riverpod_app_example/app/widgets/query_type_widget.dart';

class SearchTransactionScreen extends StatelessWidget {
  const SearchTransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Query Transaction"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomQueryTypeWidget(text: "ByDate"),
              CustomQueryTypeWidget(text: "By Transaction id"),
            ],
          ),
          queryByDateSection(context: context),
          queryByTransaction()
        ],
      ),
    );
  }

  // Widget queryTypeSection({required String text}) {
  //   return Container(
  //     child: Row(children: [
  //       const Icon(Icons.circle_outlined),
  //       Text(text),
  //     ]),
  //   );
  // }

  Widget queryByTransaction() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const CustomTextField(keyboardType: TextInputType.text),
            ElevatedButton(onPressed: () {}, child: const Text("Search"))
          ],
        ),
      ),
    );
  }

  Widget queryByDateSection({context}) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          const Text("Mobile Number"),
          const CustomTextField(keyboardType: TextInputType.number),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .45,
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
                width: MediaQuery.of(context).size.width * .45,
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
          ElevatedButton(
            onPressed: () {},
            child: const Text("Search"),
          )
        ]),
      ),
    );
  }
}
