import 'package:flutter/material.dart';
import 'package:ft/SignUpPage.dart';

import 'SignInPage.dart';

void main() {
  runApp(TabBarForLogin());
}

class TabBarForLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            bottom: TabBar(
              tabs: [
                //  Tab(icon: Icon(Icons.directions_car), child: Text("Login"),),
                Tab(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                // Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: Text('Login & Registation Page'),
          ),
          body: TabBarView(
            children: [
              SignInScreen(),

              //Icon(Icons.directions_transit),
              SignUpScreen()
            ],
          ),
        ),
      ),
    );
  }
}
