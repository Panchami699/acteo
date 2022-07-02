import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/Screens/home_page_programe/arts_page/Score/arts_score.dart';
import 'package:myapp/brototype%20admin/details.dart';
import 'package:myapp/brototype%20admin/list.dart';
import 'package:myapp/db/brototype_database_helper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:myapp/db/models/arts_score.dart';
import 'package:myapp/db/models/brototype_arts_score.dart';

class UserArtsScore extends StatefulWidget {
  const UserArtsScore({Key? key}) : super(key: key);

  @override
  State<UserArtsScore> createState() => _UserArtsScore();
}

class _UserArtsScore extends State<UserArtsScore> {
  final DatabaseService _databaseService = DatabaseService();

  Future<List<StudentModel>> _getscore() async {
    return await _databaseService.teamscore();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('teamscore'),
          backgroundColor: Colors.black,
        ),
        body: ArtsScore(
          future: _getscore(),
        ),
      ),
    );
  }
}
