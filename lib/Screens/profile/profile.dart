import 'package:flutter/material.dart';
import 'package:myapp/Screens/profile/email.dart';
import 'package:myapp/Screens/profile/feedback.dart';
import 'package:myapp/Screens/profile/help.dart';
import 'package:myapp/Screens/profile/logout.dart';
import 'package:myapp/Screens/profile/password.dart';
import 'package:myapp/Screens/profile/settings.dart';
import 'package:myapp/Screens/profile/username.dart';

class ProfileInNavigationBar extends StatelessWidget {
  const ProfileInNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Expanded(
          // child : ListTile()
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              OutlinedButton.icon(
                label: const Text(
                  'Contact Admin',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 6, 61, 35)),
                ),
                icon: const Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (ctx) {
                    return const UsernameFromProfile(
                        name: 'click here to return');
                  }));
                },
              ),

              //(onPressed: null, child: Text("Username")),
              const Padding(padding: EdgeInsets.all(4.00)),

              // OutlinedButton.icon(
              //   label: const Text(
              //     ' Change Password',
              //     style: TextStyle(
              //         fontSize: 30,
              //         fontWeight: FontWeight.bold,
              //         color: Color.fromARGB(255, 135, 231, 184)),
              //   ),
              //   icon: const Icon(
              //     Icons.password,
              //     color: Colors.black,
              //     size: 40,
              //   ),
              //   onPressed: () {
              //     Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
              //       return const PasswordFromProfile(
              //           name: 'click here to return');
              //     }));
              //   },
              // ),

              // const Padding(padding: EdgeInsets.all(4.00)),

              // OutlinedButton.icon(
              //   label: const Text(
              //     'Update Email',
              //     style: TextStyle(
              //         fontSize: 30,
              //         fontWeight: FontWeight.bold,
              //         color: Color.fromARGB(255, 135, 231, 184)),
              //   ),
              //   icon: const Icon(
              //     Icons.mail,
              //     color: Colors.black,
              //     size: 40,
              //   ),
              //   onPressed: () {
              //     Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
              //       return const EmailFromProfile(name: 'click here to return');
              //     }));
              //   },
              // ),

              // const Padding(padding: EdgeInsets.all(4.00)),

              // OutlinedButton.icon(
              //   label: const Text(
              //     'Settings',
              //     style: TextStyle(
              //         fontSize: 30,
              //         fontWeight: FontWeight.bold,
              //         color: Color.fromARGB(255, 88, 4, 44)),
              //   ),
              //   icon: const Icon(
              //     Icons.settings,
              //     color: Colors.black,
              //     size: 40,
              //   ),
              //   onPressed: () {
              //     Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
              //       return const SettingsFromProfile(
              //           name: 'click here to return');
              //     }));
              //   },
              // ),

              //   const Padding(padding: EdgeInsets.all(4.00)),

              OutlinedButton.icon(
                label: const Text(
                  'Help',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 6, 14, 104)),
                ),
                icon: const Icon(
                  Icons.help,
                  color: Colors.black,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return const HelpFromProfile(name: 'click here to return');
                  }));
                },
              ),

              const Padding(padding: EdgeInsets.all(4.00)),

              OutlinedButton.icon(
                label: const Text(
                  'Feedback',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 81, 84, 5)),
                ),
                icon: const Icon(
                  Icons.feedback,
                  color: Colors.black,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return const FeedbackFromProfile(
                        name: 'click here to return');
                  }));
                },
              ),
              // const Padding(padding: EdgeInsets.all(4.00)),

              // OutlinedButton.icon(
              //     label: const Text(
              //       'Log out',
              //       style: TextStyle(
              //           fontSize: 30,
              //           fontWeight: FontWeight.bold,
              //           color: Color.fromARGB(255, 135, 231, 184)),
              //     ),
              //     icon: const Icon(
              //       Icons.logout,
              //       color: Colors.black,
              //       size: 40,
              //     ),
              //     onPressed: () {
              //       //final action =
              //       Logout.yesCancelDialog(context, 'Logout', 'Are you sure ?');
              //     }
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (ctx) {
              //       return const FeedbackFromProfile(
              //           name: 'click here to return');
              //       ),
            ],
          ),
        ),
      ),
    );
  }
}                
        //   )
        // }, separatorBuilder: separatorBuilder, itemCount: itemCount)),
    // Center(child: Text('Profile from the navigation bar'));
    // child:
    // <Widget>[
    //   Container(
    //     height: Size.height * .3,
    //     decoration: BoxDecoration(
    //       image: DecorationImage(
    //           alignment: Alignment.topCenter,
    //           image: AssetImage('assets/images/homescreen_decoration.jpeg')),
    //     ),
    //   )
    // ];