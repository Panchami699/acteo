import 'package:flutter/material.dart';
import 'package:myapp/Screens/Admin/home_page.dart';
import 'package:myapp/Screens/Home_Screen/home_screen.dart';
import 'package:myapp/Screens/score.dart';
import 'package:myapp/loginScreen/splashScreen.dart';
import 'package:myapp/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:myapp/Screens/homeadmin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isDataMatched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/AcTeoIcon.jpeg',
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Username',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: !_isDataMatched,
                    child: const Text(
                      'Invalid Username and Password',
                      style: TextStyle(fontSize: 17, color: Colors.red),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      checkLogin(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 54, 162, 57),
                    ),
                    icon: const Icon(Icons.check),
                    label: const Text(
                      'Login',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> checkLogin(BuildContext ctx) async {
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if (_username == "username1") {
      if (_password == "123") {
        final _sharedPrefs = await SharedPreferences.getInstance();
        await _sharedPrefs.setBool(saveKeyName, true);
        Navigator.of(ctx).pushReplacement(
          MaterialPageRoute(
            builder: ((ctx) => HomeScreen()),
          ),
        );
      }
      ;
      //print('$_username, $_password');
//  go to the home page
      //print('in the if condition');
    } else if (_username == "admin") {
      final _sharedPrefs = await SharedPreferences.getInstance();
      await _sharedPrefs.setBool(saveKeyName, true);
      Navigator.of(ctx).pushReplacement(
        MaterialPageRoute(
          builder: ((ctx) => AdminHomePage()),
        ),
      );
    } else {
      setState(
        () {
          _isDataMatched = false;
          //print('it is working');
        },
      );
    }
  }
}
