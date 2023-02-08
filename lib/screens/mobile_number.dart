import 'dart:developer';

import 'package:bloodbank_app/constants/colors.dart';
import 'package:bloodbank_app/constants/routes.dart';
import 'package:bloodbank_app/utils/utilities.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleAuthProvider googleAuthProvider = GoogleAuthProvider();

  TextEditingController _phoneNumberController = TextEditingController();

  Future<void> _loginIn() async {
    if (_phoneNumberController.text.isNotEmpty) {
      print("Your phone number is ${_phoneNumberController.text}");
      _signInWithGoogle();
    }
  }

  @override
  void initState() {
    super.initState();
    Utilities.logger.i("mobile_number.dart");
  }

  Future<void> _signInWithGoogle() async {
    _auth.signInWithProvider(googleAuthProvider).then((UserCredential value) {
      log("value is $value");
      log(value.user!.email.toString());
      log(value.user!.photoURL.toString());
      log(value.user!.displayName.toString());
      Navigator.pushNamed(context, Routes.otpScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //the enter number field
              // ignore: avoid_unnecessary_containers
              Container(
                child: Column(
                  children: [
                    Container(
                      child: const Text(
                        "Enter your mobile number",
                      ),
                    ),
                    Container(
                      // width: 365,
                      // 48 as padding on both sides and 265 to be width
                      // so the percentage is ~73%
                      width: MediaQuery.of(context).size.width * 0.73,
                      margin: EdgeInsets.only(
                        top: 15,
                      ),
                      padding:
                          const EdgeInsets.only(left: 40, top: 14, bottom: 17),
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.8,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              20,
                            ),
                          )),
                      child: Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "+91",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: MyColors.redPrimary,
                                ),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              SizedBox(
                                width: 180,
                                child: TextField(
                                  // validator: (value) => ,
                                  // onChanged: (value) =>
                                  //     {_phoneNumberController.text = value},
                                  controller: _phoneNumberController,

                                  decoration: InputDecoration(
                                    // prefix: Text(
                                    //   '+91',
                                    //   style: TextStyle(
                                    //     fontSize: 20,
                                    //     color: MyColors.redPrimary,
                                    //   ),
                                    // ),
                                    border: InputBorder.none,
                                    //
                                    hintText: 'Enter you number here',
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // add some spacing
              const SizedBox(
                height: 67,
              ),

              ElevatedButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    Size(
                      MediaQuery.of(context).size.width * 0.73,
                      53,
                    ),
                  ),
                ),
                onPressed: _loginIn,
                child: const Text("Login"),
              ),

              TextButton(
                  onPressed: () => {
                        Navigator.pushNamed(context, Routes.signUpScreen),
                      },
                  child: Text("Sign UP")),

              // Container(
              //   height: 53,
              //   width: 263,
              //   decoration: BoxDecoration(
              //     color: MyColors.redPrimary,
              //     borderRadius: BorderRadius.circular(4),
              //   ),
              //   child: Center(
              //     child: Text(
              //       "Login",
              //       style: TextStyle(
              //         color: Colors.white,
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
