/*This code is created for the fuctioning of  the tabs in the page of test here */

import 'package:flutter/material.dart';

class TabNoOne extends StatelessWidget {
  const TabNoOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 8.0,
            margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: Container(
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
              child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                    padding: const EdgeInsets.only(right: 12.0),
                    decoration: const BoxDecoration(
                        border: Border(
                            right:
                                BorderSide(width: 1.0, color: Colors.white24))),
                    child: Icon(Icons.autorenew, color: Colors.white),
                  ),
                  title: Text(
                    "Introduction to Driving",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.linear_scale, color: Colors.yellowAccent),
                      Text(" Intermediate",
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right,
                      color: Colors.white, size: 30.0)),
            ),
          );
        },
      ),
    ));
    // return ListView.separated(
    //   itemBuilder: (context, index) {
    //     return Card(
    //       child: ListTile(
    //         title: const Text('sub categories'),
    //         trailing: IconButton(
    //           onPressed: () {},
    //           icon: const Icon(Icons.delete),
    //         ),
    //       ),
    //     );
    //   },
    //   separatorBuilder: (context, index) {
    //     return const SizedBox(
    //       height: 10,
    //     );
    //   },
    //   itemCount: 50,
    // );
  }
}
