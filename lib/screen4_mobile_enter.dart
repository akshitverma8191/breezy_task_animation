import 'package:breezy_task/screen5_otp_page.dart';
import 'package:flutter/material.dart';

class screen4_mobile_enter extends StatefulWidget {
  @override
  _screen4_mobile_enterState createState() => _screen4_mobile_enterState();
}

class _screen4_mobile_enterState extends State<screen4_mobile_enter> {
  double yoffset = 0;
  String mobile;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    yoffset = 700;
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
              height: 10,
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
            Padding(
              padding: EdgeInsets.only(
                  top: 10,
                  left: MediaQuery.of(context).size.width * .05,
                  right: MediaQuery.of(context).size.width * .05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "YOUR PHONE NUMBER,",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 20, right: 10),
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      height: MediaQuery.of(context).size.height * .075,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: TextField(
                        onChanged: (e) {
                          mobile = e;
                          if (e.length > 0) {
                            setState(() {
                              yoffset = 0;
                            });
                          } else {
                            setState(() {
                              yoffset = 900;
                            });
                          }
                        },
                        keyboardType: TextInputType.phone,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height * .04),
                        decoration: InputDecoration(
                            hintText: "+91123456789",
                            border: InputBorder.none,
                            errorBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            hintStyle: TextStyle(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.height * .04)),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Used to Identify your account and for a smooth",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("delivery experience",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Container()),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 250),
                    transform: Matrix4.translationValues(0, yoffset, 0),
                    width: MediaQuery.of(context).size.width * .4,
                    height: MediaQuery.of(context).size.height * .08,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Back",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height * .04),
                      ),
                    ),
                  ),
                ),
                Expanded(child: Container()),
                InkWell(
                  onTap: () {
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
                              return screen5_otp(
                                mobile: mobile,
                              );
                            }));
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 250),
                    transform: Matrix4.translationValues(0, yoffset, 0),
                    width: MediaQuery.of(context).size.width * .4,
                    height: MediaQuery.of(context).size.height * .08,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height * .04),
                      ),
                    ),
                  ),
                ),
                Expanded(child: Container()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
