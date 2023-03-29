import 'package:flutter/material.dart';
import 'package:riverpod_app_example/app/constants/ott_list.dart';
import 'package:riverpod_app_example/app/widgets/custom_subs_tile.dart';
import 'package:riverpod_app_example/app/widgets/custom_sub_item.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints boxConstraints) {
      return Scaffold(
          appBar: AppBar(
            title: const Text("Dashboard"),
            actions: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("Change Theme"),
              )
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: SizedBox(
                  width: width,
                  height: height * .25,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: ottList.length,
                    itemBuilder: (context, index) {
                      return CustomSubItems(
                        logo: ottList[index]["logo"],
                        text: ottList[index]["text"],
                      );
                    },
                  ),
                ),
              ),

              Expanded(
                child: ListView.builder(
                  // physics: const NeverScrollableScrollPhysics(),
                  itemCount: ottList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomSubscriptionTile(
                        logo: ottList[index]["logo"],
                        name: ottList[index]["text"],
                      ),
                    );
                  },
                ),
              )
              // Container(
              //   // color: AppColors.blue,
              //   child: Column(
              //     children: [
              //       const Text('Your Subscription List will be Shown Here'),
              //       Text(sHeight.toString()),
              //       Text((sHeight * .1).toString()),
              //       Row(
              //         children: [
              //           Container(
              //             alignment: Alignment.center,
              //             height: 50,
              //             width: width * .2,
              //             color: Colors.red,
              //             child: Text((sWidth * .1).toString()),
              //           ),
              //           Container(
              //             alignment: Alignment.center,
              //             height: 50,
              //             width: width * .2,
              //             color: Colors.yellow,
              //             child: Text((sWidth * .1).toString()),
              //           ),
              //           Container(
              //             alignment: Alignment.center,
              //             height: 50,
              //             width: width * .3,
              //             color: Colors.blue,
              //             child: Text((sWidth * .1).toString()),
              //           ),
              //           Container(
              //             alignment: Alignment.center,
              //             height: 50,
              //             width: width * .3,
              //             color: Colors.orange,
              //             child: Text((sWidth * .1).toString()),
              //           )
              //         ],
              //       ),
              //       Container(
              //         alignment: Alignment.center,
              //         color: Colors.green,
              //         height: 50,
              //         width: sWidth,
              //         child: Text(sWidth.toString()),
              //       )
              //     ],
              //   ),
              // )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.payment_rounded), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            ],
          ));
    });
  }
}
