import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/brototype%20admin/details.dart';
import 'package:myapp/brototype%20admin/list.dart';
import 'package:myapp/db/brototype_database_helper.dart';

class AdminArtsMedia extends StatelessWidget {
  const AdminArtsMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //getAllScore();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Team Score',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: //Column(
            //children: const [
            AddDetailsWidget(),

        //const Expanded(child: ListDetailsWidget()),
        //],
      ),
    );
    //);
  }
}
