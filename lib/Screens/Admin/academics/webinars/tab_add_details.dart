import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/db/brototype_database_helper.dart';
import 'package:myapp/db/models/brototype_arts_score.dart';
import 'package:myapp/db/models/webinars.dart';
import 'package:myapp/db/webianr_helper.dart';
import 'package:flutter/src/widgets/framework.dart';

class AdminWebinarsAddDetails extends StatefulWidget {
  const AdminWebinarsAddDetails({Key? key, this.wbDetail}) : super(key: key);
  final WebinarsDetailsModel? wbDetail;

  @override
  _AdminWebinarsAddDetails createState() => _AdminWebinarsAddDetails();
}

//@override
//State<AdminWebinarsAddDetails> createState() => _AdminWebinarsAddDetails();

class _AdminWebinarsAddDetails extends State<AdminWebinarsAddDetails> {
  final _eventNameController = TextEditingController();
  final _orgNameController = TextEditingController();
  final _descriptionController = TextEditingController();

  final DatabaseService _databaseService = DatabaseService();

  @override
  void initState() {
    super.initState();
    if (widget.wbDetail != null) {
      _eventNameController.text = widget.wbDetail!.eventName;
      _orgNameController.text = widget.wbDetail!.orgName;
      _descriptionController.text = widget.wbDetail!.description;
    }
  }

  Future<void> _onSaveWebinarDetail() async {
    final eventName = _eventNameController.text;
    final orgName = _orgNameController.text;
    final description = _descriptionController.text;

    widget.wbDetail == null;
    await _databaseService.addWebinarDetails(
      WebinarsDetailsModel(
          eventName: eventName, orgName: orgName, description: description),
    );
    //? :
    await _databaseService.updateWebinarDetails(
      WebinarsDetailsModel(
          id: widget.wbDetail!.id,
          eventName: eventName,
          orgName: orgName,
          description: description),
    );

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Webinar Details'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _eventNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Webinar Name',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _orgNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Organisation Name',
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Description',
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 45.0,
              child: ElevatedButton.icon(
                onPressed: () {
                  _onSaveWebinarDetail();
                },
                icon: const Icon(Icons.add),
                label: const Text('Add Details'),
                //              AddButtonPressedwebinar();
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//   Future<void> AddButtonPressedwebinar() async {
//     final _eventName = _eventNameController.text.trim();
//     final _orgName = _orgNameController.text.trim();
//     final _description = _descriptionController.text.trim();

//     if (_eventName.isEmpty || _orgName.isEmpty || _description.isEmpty) {
//       //
//       return;
//     }
//     final _webinarsdetail = WebinarsDetailsModel(
//         eventName: _eventName, orgName: _orgName, description: _description);

//     addWebinarDetails(_webinarsdetail);
//     print('this is the event name from the add details dunction $_eventName');
//   }
// }

// // class _AdminWebinarsAddDetailsState extends State<AdminWebinarsAddDetails> {
// //   final TextEditingController _eventNameController = TextEditingController();
// //   final TextEditingController _orgNameController = TextEditingController();
// //   final TextEditingController _descriptionController = TextEditingController();

// //   final DatabaseService _databaseService = DatabaseService();

// //   @override
// //   void initState() {
// //     super.initState();
// //     if (widget.wbDetail != null) {
// //       _eventNameController.text = widget.wbDetail!.eventName;
// //       _orgNameController.text = widget.wbDetail!.orgName;
// //       _descriptionController.text = widget.wbDetail!.description;
// //     }
// //   }

// //   @override

// //   Future<void> _onSaveWebinarDetail() async {
// //     final eventName = _eventNameController.text;
// //     final orgName = _orgNameController.text;
// // final description = _descriptionController.text;

// //     await _databaseService.addScore(WebinarsDetailsModel
// //     (eventName: eventName, orgName: orgName, description: description));

// //     Navigator.pop(context);
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Add Webinar Details'),
// //         centerTitle: true,
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(10),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.stretch,
// //           children: [
// //             TextField(
// //               controller: _eventNameController,
// //               decoration: InputDecoration(
// //                 border: OutlineInputBorder(),
// //                 hintText: 'Team Name',
// //               ),
// //             ),
// //             SizedBox(height: 10),
// //             TextField(
// //               controller: _orgNameController,
// //               maxLines: 2,
// //               decoration: InputDecoration(
// //                 border: OutlineInputBorder(),
// //                 hintText: 'Score',
// //               ),
// //             ),
// //             SizedBox(height: 10),
// //             TextField(
// //               controller: _descriptionController,
// //               maxLines: 10,
// //               decoration: InputDecoration(
// //                 border: OutlineInputBorder(),
// //                 hintText: 'Score',
// //               ),
// //             ),
// //             const SizedBox(height: 10),
// //             SizedBox(
// //               height: 45.0,
// //               child: ElevatedButton.icon(
// //                 onPressed: () {
// //                   _onSaveWebinarDetail();
// //                 },
// //                 icon: const Icon(Icons.add),
// //                 label: const Text('Add Details'),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }


















// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     if (widget.tmscore != null) {
// // //       _nameController.text = widget.tmscore!.name;
// // //       _scoreController.text = widget.tmscore!.score;
// // //     }
// // //   }

// // //   Future<void> _onSaveScore() async {
// // //     final name = _nameController.text;
// // //     final score = _scoreController.text;

// // //     await _databaseService.addScore(StudentModel(name: name, score: score));

// // //     Navigator.pop(context);
// // //   }



// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Padding(










// // //       padding: const EdgeInsets.all(10),
// // //       child: Column(
// // //         children: [
// // //           TextFormField(
// // //             controller: _eventNameController,
// // //             decoration: const InputDecoration(
// // //               border: OutlineInputBorder(),
// // //               hintText: 'Webinar Name',
// // //             ),
// // //           ),
// // //           const SizedBox(height: 10),
// // //           TextFormField(
// // //             controller: _orgNameController,
// // //             decoration: const InputDecoration(
// // //               border: OutlineInputBorder(),
// // //               hintText: 'Organisation Name',
// // //             ),
// // //           ),
// // //           const SizedBox(height: 10),
// // //           TextFormField(
// // //             controller: _descriptionController,
// // //             decoration: const InputDecoration(
// // //               border: OutlineInputBorder(),
// // //               hintText: 'Description',
// // //             ),
// // //           ),
// // //           const SizedBox(height: 10),
// // //           ElevatedButton.icon(
// // //             onPressed: () {
// // //               AddButtonPressedwebinar();
// // //             },
// // //             icon: const Icon(Icons.add),
// // //             label: const Text('Add Details'),
// // //           )
// // //         ],
// // //       ),
// // //     );
// // // //   }

// // //   Future<void> AddButtonPressedwebinar() async {
// // //     final _eventName = _eventNameController.text.trim();
// // //     final _orgName = _orgNameController.text.trim();
// // //     final _description = _descriptionController.text.trim();

// // //     if (_eventName.isEmpty || _orgName.isEmpty || _description.isEmpty) {
// // //       //
// // //       return;
// // //     }
// // //     final _teamscore = StudentModel(
// // //         eventName: _eventName, orgName: _orgName, description: _description);

// // //     addScore(_teamscore);
// // //     print('this is the event name from the add details dunction $_eventName');
// // //   }
// // // }










// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('Add Team Score'),
// // //         centerTitle: true,
// // //       ),
// // //       body: Padding(
// // //         padding: const EdgeInsets.all(10),
// // //         child: Column(
// // //           crossAxisAlignment: CrossAxisAlignment.stretch,
// // //           children: [
// // //             TextField(
// // //               controller: _nameController,
// // //               decoration: InputDecoration(
// // //                 border: OutlineInputBorder(),
// // //                 hintText: 'Team Name',
// // //               ),
// // //             ),
// // //             SizedBox(height: 10),
// // //             TextField(
// // //               controller: _scoreController,
// // //               maxLines: 2,
// // //               decoration: InputDecoration(
// // //                 border: OutlineInputBorder(),
// // //                 hintText: 'Score',
// // //               ),
// // //             ),
// // //             const SizedBox(height: 10),
// // //             SizedBox(
// // //               height: 45.0,
// // //               child: ElevatedButton.icon(
// // //                 onPressed: () {
// // //                   _onSaveScore();
// // //                 },
// // //                 icon: const Icon(Icons.add),
// // //                 label: const Text('Add Details'),
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }




























// // // import 'package:flutter/cupertino.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:flutter/src/foundation/key.dart';
// // // import 'package:flutter/src/widgets/framework.dart';
// // // import 'package:myapp/db/brototype_database_helper.dart';
// // // import 'package:myapp/db/models/brototype_arts_score.dart';
// // // import 'package:myapp/db/models/webinars.dart';
// // // import 'package:myapp/db/webianr_helper.dart';
// // // //import 'package:myapp/db/webianr_helper.dart';
// // // // import 'package:demo/dbhelper.dart';
// // // // import 'package:demo/models/dog.dart';
// // // //import 'package:flutter/material.dart';
// // // import 'package:font_awesome_flutter/font_awesome_flutter.dart';


// // // class AdminWebinarsAddDetails extends StatelessWidget {
// // //   const AdminWebinarsAddDetails({Key? key,
// // //   required this.future,
// // //     required this.onEdit,
// // //     required this.onDelete,}) : super(key: key);
// // //   final Future<List<WebinarsDetailsModel>> future;
// // //   final Function(WebinarsDetailsModel) onEdit;
// // //   final Function(WebinarsDetailsModel) onDelete;
// // //   Future<String> getwebinarDetail(int id) async {
// // //     final DatabaseService _databaseService = DatabaseService();
// // //     final breed = await _databaseService.breed(id);
// // //     return breed.name;
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return FutureBuilder<List<Dog>>(
// // //       future: future,
// // //       builder: (context, snapshot) {
// // //         if (snapshot.connectionState == ConnectionState.waiting) {
// // //           return Center(
// // //             child: CircularProgressIndicator(),
// // //           );
// // //         }















// // //         return Padding(
// // //           padding: const EdgeInsets.symmetric(horizontal: 8.0),
// // //           child: ListView.builder(
// // //             itemCount: snapshot.data!.length,
// // //             itemBuilder: (context, index) {
// // //               final dog = snapshot.data![index];
// // //               return _buildDogCard(dog, context);
// // //             },
// // //           ),
// // //         );
// // //       },
// // //     );
// // //   }

// // //   Widget _buildDogCard(Dog dog, BuildContext context) {
// // //     return Card(
// // //       child: Padding(
// // //         padding: const EdgeInsets.all(12.0),
// // //         child: Row(
// // //           children: [
// // //             Container(
// // //               height: 40.0,
// // //               width: 40.0,
// // //               decoration: BoxDecoration(
// // //                 shape: BoxShape.circle,
// // //                 color: Colors.grey[200],
// // //               ),
// // //               alignment: Alignment.center,
// // //               child: FaIcon(FontAwesomeIcons.dog, size: 18.0),
// // //             ),
// // //             SizedBox(width: 20.0),
// // //             Expanded(
// // //               child: Column(
// // //                 crossAxisAlignment: CrossAxisAlignment.start,
// // //                 children: [
// // //                   Text(
// // //                     dog.name,
// // //                     style: TextStyle(
// // //                       fontSize: 18.0,
// // //                       fontWeight: FontWeight.w500,
// // //                     ),
// // //                   ),
// // //                   SizedBox(height: 4.0),
// // //                   FutureBuilder<String>(
// // //                     future: getBreedName(dog.breedId),
// // //                     builder: (context, snapshot) {
// // //                       return Text('Breed: ${snapshot.data}');
// // //                     },
// // //                   ),
// // //                   SizedBox(height: 4.0),
// // //                   Row(
// // //                     children: [
// // //                       Text('Age: ${dog.age.toString()}, Color: '),
// // //                       Container(
// // //                         height: 15.0,
// // //                         width: 15.0,
// // //                         decoration: BoxDecoration(
// // //                           borderRadius: BorderRadius.circular(4.0),
// // //                           color: dog.color,
// // //                           border: Border.all(
// // //                             color: Colors.black,
// // //                             width: 1.5,
// // //                           ),
// // //                         ),
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 ],
// // //               ),
// // //             ),
// // //             SizedBox(width: 20.0),
// // //             GestureDetector(
// // //               onTap: () => onEdit(dog),
// // //               child: Container(
// // //                 height: 40.0,
// // //                 width: 40.0,
// // //                 decoration: BoxDecoration(
// // //                   shape: BoxShape.circle,
// // //                   color: Colors.grey[200],
// // //                 ),
// // //                 alignment: Alignment.center,
// // //                 child: Icon(Icons.edit, color: Colors.orange[800]),
// // //               ),
// // //             ),
// // //             SizedBox(width: 20.0),
// // //             GestureDetector(
// // //               onTap: () => onDelete(dog),
// // //               child: Container(
// // //                 height: 40.0,
// // //                 width: 40.0,
// // //                 decoration: BoxDecoration(
// // //                   shape: BoxShape.circle,
// // //                   color: Colors.grey[200],
// // //                 ),
// // //                 alignment: Alignment.center,
// // //                 child: Icon(Icons.delete, color: Colors.red[800]),
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
