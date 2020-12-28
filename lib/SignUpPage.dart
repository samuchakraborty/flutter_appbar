import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
//         padding: EdgeInsets.symmetric(vertical: 30),
//         width: double.infinity,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(begin: Alignment.topCenter, colors: [
//             Colors.orange[900],
//             Colors.orange[800],
// //            Colors.grey[700],
//             Colors.orange[400]
//           ]),
//         ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //   SizedBox(
            //     height: 40,
            //   ),
            //   Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Column(
            //       children: [
            //         Text(
            //           "Register",
            //           style: TextStyle(fontSize: 18, color: Colors.white),
            //         ),
            //       ],
            //     ),
            //   ),
            //   SizedBox(
            //     height: 40,
            //   ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(225, 95, 27, 3),
                              blurRadius: 20,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Column(children: [
                          Container(
                            decoration: BoxDecoration(
                              // border: Border(
                              //   bottom: BorderSide(color: Colors.grey[200]),
                              // ),
                              border: Border.all(
                                  //style: BorderStyle.none,
                                  ),
                              borderRadius: BorderRadius.all(Radius.circular(
                                      10.0) //                 <--- border radius here
                                  ),
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                icon: Icon(EvaIcons.people),
                                border: InputBorder.none,
                                hintText: "Enter Mobile Number",
                              ),
                              onSaved: (String value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              validator: (String value) {
                                return value.contains('@')
                                    ? null
                                    : 'Do not use the @ char.';
                              },
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                            // decoration: BoxDecoration(
                            //   border: Border(
                            //     bottom: BorderSide(color: Colors.grey[200]),
                            //   ),
                            // ),
                            decoration: BoxDecoration(
                              // borderRadius: BorderRadius.circular(12),
                              // color: Colors.amberAccent,
                              border: Border.all(
                                  //style: BorderStyle.none,
                                  ),
                              borderRadius: BorderRadius.all(Radius.circular(
                                      10.0) //                 <--- border radius here
                                  ),
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                icon: Icon(Icons.lock),
                                hintText: "Enter Your Password",
                              ),
                              onSaved: (String value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              validator: (String value) {
                                //  return value.contains('@') ? null : 'Do not use the @ char.';
                                return value.length < 4
                                    ? "Password too short"
                                    : "Enter a password";
                              },
                              obscureText: true,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  //   width: MediaQuery.of(context).size.width,
                                  // padding: EdgeInsets.all(2),
                                  //   margin:
                                  //   EdgeInsets.only(left: 30, right: 30),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    shape: BoxShape.rectangle,
                                    color: Colors.blue,
                                  ),

                                  child: FlatButton.icon(
                                    icon: Icon(
                                      EvaIcons.facebook,
                                      color: Colors.white,
                                    ),
                                    label: Text(
                                      "Facebook",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: Container(
                                  // width: MediaQuery.of(context).size.width,
                                  // padding: EdgeInsets.all(2),
                                  //  margin:
                                  //     EdgeInsets.only(left: 30, right: 30),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    shape: BoxShape.rectangle,
                                    color: Colors.redAccent,
                                  ),

                                  child: FlatButton.icon(
                                    icon: Icon(
                                      EvaIcons.google,
                                      color: Colors.white,
                                    ),
                                    label: Text(
                                      "Google",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          // SizedBox(
                          //   height: 40,
                          // ),
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.amberAccent,
                            ),
                            child: Center(
                              child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  "Register Now",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
