import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_project/Common/app_bar_with_back_button.dart';
import 'package:flutter_project/Screens/DashBoard.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerify extends StatefulWidget {
  final String mobile, otp;

  OtpVerify(this.mobile, this.otp);

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<OtpVerify> {
  final interval = const Duration(seconds: 1);
  final int timerMaxSeconds = 20;
  int currentSeconds = 0;

  String get timerText =>
      '${((timerMaxSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')}: '
      '${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';

  startTimeout([int? milliseconds]) {
    var duration = interval;
    Timer.periodic(duration, (timer) {
      setState(() {
        /* print(timer.tick);*/
        currentSeconds = timer.tick;
        if (timer.tick >= timerMaxSeconds) timer.cancel();
      });
    });
  }

  Widget initWidget(String mobile, String otp) {
    return Scaffold(
      appBar:AppBarWithBackButton.appBarWithBack(),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset("images/otp.png", width: 100, height: 100),
              Text(
                mobile,
                style: new TextStyle(
                    color: Colors.grey,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "উক্ত নম্বরে একটি যাচাই করণ কোড পাঠানো হয়েছে",
                  style: new TextStyle(color: Colors.black, fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "এখনও কোড পান নি? ",
                    style: new TextStyle(fontSize: 15.0),
                  ),
                  Text(timerText,
                      style: new TextStyle(fontSize: 14.0, color: Colors.red))
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: PinCodeTextField(
                    appContext: context,
                    length: 4,
                    onChanged: (value) {
                      print(value);
                    },
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      inactiveColor: Colors.red,
                      activeColor: Colors.green,
                      selectedColor: Colors.orange,
                    ),
                    onCompleted: (value) {
                      if (value == otp) {
                        print('valid pin');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DashBoard()));
                      } else {
                        print('invalid pin');
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("OTP"),
                                content: Text('Otp is incorrect !'),
                              );
                            });
                      }
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    startTimeout();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(widget.mobile, widget.otp);
  }
}
