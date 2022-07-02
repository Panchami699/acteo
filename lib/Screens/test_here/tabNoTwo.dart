import 'package:flutter/material.dart';

class TabNoTwo extends StatelessWidget {
  const TabNoTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: const Text('sub categories'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 10,
        );
      },
      itemCount: 50,
    );
  }
}
