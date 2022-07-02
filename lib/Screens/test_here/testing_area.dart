//import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:myapp/Screens/test_here/tabNoOne.dart';
import 'package:myapp/Screens/test_here/tabNoTwo.dart';

class TestingArea extends StatefulWidget {
  const TestingArea({Key? key}) : super(key: key);

  @override
  State<TestingArea> createState() => _TestingAreaState();
}

class _TestingAreaState extends State<TestingArea>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Arts',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            labelColor: const Color.fromARGB(255, 17, 17, 17),
            unselectedLabelColor: Colors.grey,
            tabs: const [
              Tab(
                text: ('1st tab'),
              ),
              Tab(
                text: ('2ND TAB'),
              )
            ],
          ),
          Expanded(
              child: TabBarView(
            controller: _tabController,
            children: const [TabNoOne(), TabNoTwo()],
          ))
        ],
      ),
    );
  }
}







/******************************************************************************************************
 * ****************************************************************************************************
 * ***************************************************************************************************
 *THE CODE BELOW IS FUCNTIONAL AND IS USED TO CREATE LISTS 
 THIS IS TAKEN FROM THE BROTOTYPE MONEY MANAGEMENT PROJECT CHAPTER 1 UPTO THE TIMESTAMP OF 32 MINUTE
 ******************************************************************************************************
 ******************************************************************************************************
 ******************************************************************************************************  */
//       body: ListView.separated(
//         padding: EdgeInsets.all(10),
//         //padding is used the define the distance of the list border from the screen border
//         itemBuilder: ((context, index) {
//           return const Card(
// /*Here the card is created to separate each tile and to use the elevation function
// It is created by wraping the 'ListTile' by widget and renaming it 'Card" */
//             elevation: 10,
//             //Elevation is the relative distance between two surfaces along the z-axis

//             child: ListTile(
//               leading: CircleAvatar(
//                 //here the text is wrapped with widget and name it the circleavatar
//                 radius: 60,
//                 child: Text(
//                   'the \n leading',
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               title: Text('the title'),
//               subtitle: Text('again the subtitle'),
//             ),
//           );
//         }),
//         separatorBuilder: (ctx, index) {
//           return const SizedBox(height: 10);
//           //separatorBuilder is used to define the distance between two lists
//         },
//         itemCount: 10,
//         //itemCount defines the number of the lists
//       ),
