import 'package:flutter/material.dart';
import 'package:myapp/Screens/Home_Screen/home_screen.dart';
import 'package:myapp/loginScreen/loginPage.dart';
import 'package:myapp/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  /*the common 3 life cycle methods used in stateful widget of flutter are
  the initState which is intialised at the start only
  then the didChangeDependencies which is called at the end
  and at last the dispose which is used to remove value*/

  @override
  void initState() {
    // gotoLogin();
    checkUserLoggedIn();
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/images/AcTeoIcon.jpeg',
          height: 1000,
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> gotoLogin() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: ((context) => const LoginPage()),
      ),
    );
  }

  Future<void> checkUserLoggedIn() async {
    final _sharedPrefs = await SharedPreferences.getInstance();
    final _userLoggedIn = _sharedPrefs.getBool(saveKeyName);
    if (_userLoggedIn == null || _userLoggedIn == false) {
      gotoLogin();
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: ((context) => HomeScreen()),
        ),
      );
    }
  }
}
