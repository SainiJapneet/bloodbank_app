// ignore_for_file: avoid_unnecessary_containers, duplicate_ignore, sized_box_for_whitespace

import 'dart:developer';

import 'package:bloodbank_app/constants/colors.dart';
import 'package:bloodbank_app/constants/routes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _phoneNumberController = TextEditingController();
    log("---------------------------------------------");
    log("---------mobile_number.dart------------");
    log("---------------------------------------------");
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
                      width: 265,
                      margin: EdgeInsets.only(
                        top: 15,
                      ),
                      padding: EdgeInsets.fromLTRB(60, 14, 60, 17),
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.8,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              20,
                            ),
                          )),
                      child: Text(
                        "+91",
                        style: TextStyle(
                          fontSize: 18,
                          color: MyColors.redPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // add some spacing
              const SizedBox(
                height: 67,
              ),
              Container(
                height: 53,
                width: 263,
                decoration: BoxDecoration(
                  color: MyColors.redPrimary,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () => {
                  if (_phoneNumberController.text.isNotEmpty)
                    {
                      print(
                          "Your phone number is ${_phoneNumberController.text}"),
                      Navigator.pushNamed(context, Routes.otpScreen)
                    }
                },
                child: const Text("Login"),
              ),

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
