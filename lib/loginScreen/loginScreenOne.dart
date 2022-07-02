import 'package:flutter/material.dart';
import 'package:myapp/loginScreen/loginScreenTwoForSavedAccnts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreenOne extends StatelessWidget {
  LoginScreenOne({Key? key}) : super(key: key);
  final _textController = TextEditingController();

  //*check about the named parameters */

  @override
  Widget build(BuildContext context) {
    getSavedData(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextFormField(
              controller: _textController,
            ),
            ElevatedButton(
              onPressed: () {
                saveDataToStorage();
              },
              child: const Text('save the value'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> saveDataToStorage() async {
    print(_textController.text);

    //shared preference
/*SharedPreferences is what Android and iOS apps use to store simple data in an allocated space. 
This data exists even when the app is shut down and starts up again; 
we can still retrieve the value as it was.
The data stored in SharedPreferences can be edited and deleted. 
SharedPreferences stores the data in a key-value pair.
The shared_preferences plugin exports a SharedPreferences class,
which has methods that can be used to set data of various primitive types in SharedPreferences.
It has a method, getInstance, which is used to create an instance of a SharedPreferences.
SharedPreferences prefs = await SharedPreferences.getInstance();
The getInstance creates and returns a SharedPreferences instance. 
The prefs holds the instance of SharedPreferences. */

    final SharedPrefs = await SharedPreferences.getInstance();

    //save value
    await SharedPrefs.setString('saved_value', _textController.text);
  }

  Future<void> getSavedData(BuildContext context) async {
    final sharedPrefs = await SharedPreferences.getInstance();
    final savedValue = sharedPrefs.getString('saved_value');
    if (savedValue != null) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: ((context) => const LoginScreenTwoForSavedAccnts()),
        ),
      );
    }
  }
}
