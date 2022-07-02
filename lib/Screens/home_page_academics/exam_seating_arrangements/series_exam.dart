import 'package:flutter/material.dart';

class AdminSeriesExamination extends StatelessWidget {
  final String name;
  const AdminSeriesExamination({Key? key, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Series Examination',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(name))
        ],
      )),
    );
  }
}
