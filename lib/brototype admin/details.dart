import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/db/brototype_database_helper.dart';
import 'package:myapp/db/models/brototype_arts_score.dart';

class AddDetailsWidget extends StatefulWidget {
  const AddDetailsWidget({Key? key, this.tmscore}) : super(key: key);
  final StudentModel? tmscore;

  @override
  _AddDetailsWidget createState() => _AddDetailsWidget();
}

class _AddDetailsWidget extends State<AddDetailsWidget> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _scoreController = TextEditingController();

  final DatabaseService _databaseService = DatabaseService();

  @override
  void initState() {
    super.initState();
    if (widget.tmscore != null) {
      _nameController.text = widget.tmscore!.name;
      _scoreController.text = widget.tmscore!.score;
    }
  }

  Future<void> _onSaveScore() async {
    final name = _nameController.text;
    final score = _scoreController.text;

//ADD THE INSERT USING THIS CODE? CHECK IT THOUGH
//    await _databaseService.addScore(StudentModel(name: name, score: score));

    // Add save code here
    widget.tmscore == null
        ? await _databaseService.addScore(
            StudentModel(name: name, score: score),
          )
        : await _databaseService.updateScore(
            StudentModel(
              id: widget.tmscore!.id,
              name: name,
              score: score,
            ),
          );

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Team Score'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Team Name',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _scoreController,
              maxLines: 2,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Score',
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 45.0,
              child: ElevatedButton.icon(
                onPressed: () {
                  _onSaveScore();
                },
                icon: const Icon(Icons.add),
                label: const Text('Add Details'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// child: ElevatedButton(
//   onPressed: _onSave,
//   child: Text(
//     'Save the Breed',
//     style: TextStyle(
//       fontSize: 16.0,

//   Future<void> AddButtonPressed() async {
//     final _name = _nameController.text.trim();
//     final _score = _scoreController.text.trim();
//     if (_name.isEmpty || _score.isEmpty) {
//       return;
//     }
//     final _teamscore = StudentModel(name: _name, score: _score);
//     //addScore(_teamscore);
//     print('$_name $_score');
//   }
// }

// TextField(
//   controller: _descController,
//   maxLines: 7,
//   decoration: InputDecoration(
//     border: OutlineInputBorder(),
//     hintText: 'Enter description about the breed here',








// DETAILS USED FROM THE BROTOTYPE

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:myapp/db/brototype_database_helper.dart';
// import 'package:myapp/db/models/brototype_arts_score.dart';

// class AddDetailsWidget extends StatelessWidget {
//   AddDetailsWidget({Key? key}) : super(key: key);

//   final _nameController = TextEditingController();
//   final _scoreController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: Column(
//         children: [
//           TextFormField(
//             controller: _nameController,
//             decoration: const InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: 'Team Name',
//             ),
//           ),
//           const SizedBox(height: 10),
//           TextFormField(
//             controller: _scoreController,
//             decoration: const InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: 'Score',
//             ),
//           ),
//           const SizedBox(height: 10),
//           ElevatedButton.icon(
//             onPressed: () {
//               AddButtonPressed();
//             },
//             icon: const Icon(Icons.add),
//             label: const Text('Add Details'),
//           )
//         ],
//       ),
//     );
//   }

//   Future<void> AddButtonPressed() async {
//     final _name = _nameController.text.trim();
//     final _score = _scoreController.text.trim();
//     if (_name.isEmpty || _score.isEmpty) {
//       return;
//     }
//     final _teamscore = StudentModel(name: _name, score: _score);
//     //addScore(_teamscore);
//     print('$_name $_score');
//   }
// }
