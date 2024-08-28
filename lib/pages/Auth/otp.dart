import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import '../../utility/color.dart';
import '../../utility/icons.dart';
import '../../widget/svg.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              const SizedBox(height: 100),
              Center(
                child: OtpTextField(
                  numberOfFields: 5,
                  borderColor: second,
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text("Verification Code"),
                            content: Text('Code entered is $verificationCode'),
                            actions: [
                              Center(
                                child: Container(
                                  decoration: const BoxDecoration(
                                  color: second,
                                    borderRadius: BorderRadius.all(Radius.circular(50))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: IconButton(
                                        onPressed: () {
                                          Get.toNamed("/login");
                                        },
                                        icon: const Icon(
                                          Icons.keyboard_double_arrow_right_rounded, 
                                          color: inputfil,
                                        )),
                                  ),
                                ),
                              )
                            ],
                          );
                        });
                  }, // end onSubmit
                ),
              ),
              const Svg100(icon: otp2icon)
            ],
          ),
        ),
      ),
    );
  }
}
