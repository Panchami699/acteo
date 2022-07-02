import 'package:flutter/material.dart';
import 'package:myapp/db/arts_score.dart';
import 'package:myapp/db/database_Helper.dart';
// import 'package:http/http.dart';
import 'package:myapp/loginScreen/loginPage.dart';

import '../db/models/arts_score.dart';

class scoreadd extends StatefulWidget {
  const scoreadd({Key? key}) : super(key: key);

  @override
  State<scoreadd> createState() => _scoreaddState();
}

class _scoreaddState extends State<scoreadd> {
  late TextEditingController sc;
  late TextEditingController tm;

  @override
  void initState() {
    // TODO: implement initState
    sc = TextEditingController();
    tm = TextEditingController();
    super.initState();
  }

  void addto() async {
    print("add to working ");
    // final artsScore = arts_score(team: tm.text, score: sc.text);
    // await DatabaseHelper.instance.create(artsScore);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 12, 15, 18),
        title: Text(
          "SCORE",
          style: new TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                signout(context);
              },
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    child: Text("SCORE",
                        style: new TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 16, 53, 91),
                        ))),
                Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
                    child: TextFormField(
                      controller: tm,
                      decoration: InputDecoration(
                          labelText: "TEAM NAME",
                          hintText: "enter TEAM name",
                          // prefixIcon: Icon(Icons.people),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    )),
                Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
                    child: TextFormField(
                      controller: sc,
                      decoration: InputDecoration(
                          labelText: "score ",
                          hintText: "Score",
                          // prefixIcon: Icon(Icons.people),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    )),

                Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                addto();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 47, 68, 125),
                                onPrimary: Colors.white,
                              ),
                              child: Text('ADD SCORE')),
                          SizedBox(width: 10),
                          ElevatedButton(
                              onPressed: () {
                                addto();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 47, 68, 125),
                                onPrimary: Colors.white,
                              ),
                              child: Text('CANCEL')),
                        ]))
                // Container(
                //   child: ElevatedButton(onPressed:(){
                //     postdata();
                // },child: Text("Register"),
                // ),),
                //  Container(

                //        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),

                //        child: Row(
                //          mainAxisAlignment: MainAxisAlignment.center,

                //          children: <Widget>[
                //            ElevatedButton(onPressed:  () {
                //              postdata();

                //            },
                //            style: ElevatedButton.styleFrom(
                //           primary: Colors.pink.shade300,
                //           onPrimary: Colors.white,
                //         ),

                //             child: Text('REGISTER')),
                //            SizedBox(width: 10),

                //            ElevatedButton
                //            (onPressed:  () {
                // //
                //         //  postdata();
                //            },
                //            style: ElevatedButton.styleFrom(
                //           primary: Colors.pink.shade300,
                //           onPrimary: Colors.white,
                //         ), child: Text('CANCEL')),
                //          ]
                //        )
                //     )
              ],
            ),
          ),
        ),
      ),
    );
  }

  signout(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(
      MaterialPageRoute(builder: (ctx) => LoginPage()),
    );
  }
}
