// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:myapp/Screens/Admin/academics/webinars/itemcard.dart';
// import 'package:myapp/db/brototype_database_helper.dart';
// import 'package:myapp/db/models/webinars.dart';





// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final DbManager dbManager = new DbManager();

//   late Model model;
//   late List<Model> modelList;
//   TextEditingController input1 = TextEditingController();
//   TextEditingController input2 = TextEditingController();
//   late FocusNode input1FocusNode;
//   late FocusNode input2FocusNode;

//   @override
//   void initState() {
//     input1FocusNode = FocusNode();
//     input2FocusNode = FocusNode();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     input1FocusNode.dispose();
//     input2FocusNode.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sqlite Demo'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           showDialog(
//               context: context,
//               builder: (context) {
//                 return DialogBox().dialog(
//                   context: context,
//                   onPressed: () {
//                     Model model = new Model(
//                         fruitName: input1.text, quantity: input2.text);
//                     dbManager.insertModel(model);
//                     setState(() {
//                       input1.text = "";
//                       input2.text = "";
//                     });
//                     Navigator.of(context).pop();
//                   },
//                   textEditingController1: input1,
//                   textEditingController2: input2,
//                   input1FocusNode: input1FocusNode,
//                   input2FocusNode: input2FocusNode,
//                 );
//               });
//         },
//         child: Icon(
//           Icons.add,
//           color: Colors.white,
//         ),
//       ),
//       body: FutureBuilder(
//         future: dbManager.getModelList(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//              modelList = snapshot.data;
//             return ListView.builder(
//               itemCount: modelList.length,
//               itemBuilder: (context, index) {
//                 Model _model = modelList[index];
//                 return ItemCard(
//                     model: _model,
//                     input1: input1,
//                     input2: input2,
//                     onDeletePress: () {
//                       dbManager.deleteModel(_model);
//                       setState(() {});
//                     },
//                   onEditPress: () {
//                     input1.text = _model.fruitName;
//                     input2.text = _model.quantity;
//                     showDialog(
//                         context: context,
//                         builder: (context) {
//                           return DialogBox().dialog(
//                               context: context,
//                               onPressed: () {
//                                 Model __model = Model(
//                                     id: _model.id,
//                                     fruitName: input1.text,
//                                     quantity: input2.text);
//                                 dbManager.updateModel(__model);

//                                 setState(() {
//                                   input1.text = "";
//                                   input2.text = "";
//                                 });
//                                 Navigator.of(context).pop();
//                               },
//                               textEditingController2: input2,
//                               textEditingController1: input1);
//                         });
//                   },
//                 );
//               },
//             );
//           }
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         },
//       ),
//     );
//   }
// }