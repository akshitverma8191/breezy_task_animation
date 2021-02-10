import 'package:breezy_task/screen6_homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';

class screen5_otp extends StatefulWidget {
  String mobile;
  screen5_otp({this.mobile}) {}
  @override
  _screen5_otpState createState() => _screen5_otpState();
}

class _screen5_otpState extends State<screen5_otp>
    with SingleTickerProviderStateMixin {
  double yoffset = 75;
  Animation _animationB;
  double opacity_get = 0.15;
  AnimationController _controllerB;
  String _verificationCode;
  final TextEditingController _pinputcontroller = TextEditingController();
  final BoxDecoration pinputdecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    color: Colors.grey[100].withOpacity(0.8),
  );
  final FocusNode _pinputfocusnode = FocusNode();

  _verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: widget.mobile,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance
              .signInWithCredential(credential)
              .then((value) async {
            if (value.user != null) {
              //Navigation code
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      transitionDuration: Duration(milliseconds: 550),
                      transitionsBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secanimation,
                          Widget child) {
                        animation = CurvedAnimation(
                            parent: animation, curve: Curves.ease);
                        return ScaleTransition(
                          scale: animation,
                          child: child,
                          alignment: Alignment.bottomCenter,
                        );
                      },
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secanimation) {
                        return screen6_homepage();
                      }));
            }
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          print(e.message);
        },
        codeSent: (String verficationID, int resendToken) {
          setState(() {
            _verificationCode = verficationID;
          });
        },
        codeAutoRetrievalTimeout: (String verificationID) {
          setState(() {
            _verificationCode = verificationID;
          });
        },
        timeout: Duration(seconds: 120));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _verifyPhone();
    _controllerB =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animationB = CurvedAnimation(parent: _controllerB, curve: Curves.ease)
      ..addListener(() {
        setState(() {
          opacity_get = _animationB.value;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.verified_user,
                  size: MediaQuery.of(context).size.height * .1,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "OTP sent to",
              style: TextStyle(
                  color: Colors.grey[400],
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.mobile,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * .25,
              height: MediaQuery.of(context).size.height * .055,
              decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text(
                  "Resend OTP",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * .025),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .154,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.grey[700].withOpacity(.6),
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "ENTER OTP",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * .0325),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                    child: PinPut(
                      fieldsCount: 6,
                      textStyle:
                          const TextStyle(fontSize: 25.0, color: Colors.black),
                      eachFieldWidth: 40.0,
                      eachFieldHeight: 55.0,
                      focusNode: _pinputfocusnode,
                      controller: _pinputcontroller,
                      submittedFieldDecoration: pinputdecoration,
                      selectedFieldDecoration: pinputdecoration,
                      followingFieldDecoration: pinputdecoration,
                      pinAnimationType: PinAnimationType.fade,
                      onChanged: (pin) {
                        _controllerB.forward(from: 0.0);
                        print(pin);
                      },
                      onSubmit: (pin) async {
                        try {
                          await FirebaseAuth.instance
                              .signInWithCredential(
                                  PhoneAuthProvider.credential(
                                      verificationId: _verificationCode,
                                      smsCode: pin))
                              .then((value) async {
                            if (value.user != null) {
                              //Navigation_code here
                              Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                      transitionDuration:
                                          Duration(milliseconds: 550),
                                      transitionsBuilder: (BuildContext context,
                                          Animation<double> animation,
                                          Animation<double> secanimation,
                                          Widget child) {
                                        animation = CurvedAnimation(
                                            parent: animation,
                                            curve: Curves.ease);
                                        return ScaleTransition(
                                          scale: animation,
                                          child: child,
                                          alignment: Alignment.bottomCenter,
                                        );
                                      },
                                      pageBuilder: (BuildContext context,
                                          Animation<double> animation,
                                          Animation<double> secanimation) {
                                        return screen6_homepage();
                                      }));
                            }
                          });
                        } catch (e) {
                          print(e);
                        }
                      },
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    transform: Matrix4.translationValues(0, yoffset, 0),
                    height: MediaQuery.of(context).size.height * .1,
                    width: MediaQuery.of(context).size.width * .4,
                    decoration: BoxDecoration(
                        color: Colors.pink.withOpacity(opacity_get),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Submit",
                        style: TextStyle(
                            color: Colors.white.withOpacity(opacity_get),
                            fontWeight: FontWeight.bold,
                            fontSize:
                                MediaQuery.of(context).size.height * .025),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
