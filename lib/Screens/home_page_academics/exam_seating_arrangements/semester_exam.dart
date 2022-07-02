import 'package:flutter/material.dart';
import 'package:myapp/db/models/semester_exam.dart';

class AdminSemesterExam extends StatefulWidget {
  final String name;
  const AdminSemesterExam({Key? key, required this.name}) : super(key: key);

  @override
  State<AdminSemesterExam> createState() => _AdminSemesterExamState();
}

class _AdminSemesterExamState extends State<AdminSemesterExam> {
  late TextEditingController name;
  late TextEditingController cls;
  late TextEditingController time;
  late TextEditingController regNum;
  @override
  void initState() {
    // TODO: implement initState
    name = TextEditingController();
    cls = TextEditingController();
    time = TextEditingController();
    regNum = TextEditingController();

    super.initState();
  }

  void addto() async {
    print("add to working ");
    // final adminSemesterExams = SemesterExamDbModel //name from the db model
    // (name: name.text, cls: cls.text, time: time.text, regNumb: regNum.text);
    // await DatabaseHelper.instance.create(AdminSemesterExams);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Semester Examination',
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
              child: Text(widget.name))
        ],
      )),
    );
  }
}
