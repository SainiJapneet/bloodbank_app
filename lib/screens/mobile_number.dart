import 'dart:ui';

import 'package:bloodbank_app/constants/colors.dart';
import 'package:flutter/material.dart';

class MobileNumber extends StatelessWidget {
  const MobileNumber({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneNumberController = ;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //the enter number field
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        "Enter your mobile number",
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.73,
                      margin: EdgeInsets.only(
                        top: 15,
                      ),
                      padding: EdgeInsets.fromLTRB(
                          MediaQuery.of(context).size.width * 0.16, 14, 60, 17),
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.8,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              20,
                            ),
                          )),
                      /*child: Text(
                        "+91",
                        style: TextStyle(
                          fontSize: 18,
                          color: MyColors.redPrimary,
                        ),
                      ),*/
                      child: TextField(
                        //validator (value) =>
                        //
                        controller: _phoneNumberController,

                        decoration: InputDecoration(
                            prefix: Text(
                              "+91",
                              style: TextStyle(fontSize: 15),
                            ),
                            //border: InputBorder,
                            hintText: 'Your mobile number'),
                      ),
                    ),
                  ],
                ),
              ),

              // add some spacing
              SizedBox(
                height: 67,
              ),
              ElevatedButton(
                  onPressed: () => {
                    if(_phoneNumberController.text.isNotEmpty){
                    print(_phoneNumberController.value),
                    }
                  },
                  child: Text("LogIn"),
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                          Size(MediaQuery.of(context).size.width * 0.73, 53)))),
              /*Container(
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
              )*/
            ],
          ),
        ),
      ),
    );
  }
}
