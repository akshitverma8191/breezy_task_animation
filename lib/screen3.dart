import 'package:breezy_task/screen4_mobile_enter.dart';
import 'package:flutter/material.dart';

class screen3 extends StatefulWidget {
  @override
  _screen3State createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "B",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * .15),
              ),
              Expanded(child: Container()),
              Stack(
                children: [
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    transform: Matrix4.translationValues(170, -40, 0),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: MediaQuery.of(context).size.height * .12,
                      height: MediaQuery.of(context).size.height * .30,
                      transform: Matrix4.rotationZ(1),
                      decoration: BoxDecoration(
                          color: Colors.pink[600],
                          borderRadius: BorderRadius.circular(55)),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: MediaQuery.of(context).size.height * .30,
                    height: MediaQuery.of(context).size.height * .30,
                    transform: Matrix4.translationValues(
                        MediaQuery.of(context).size.height * .1,
                        -MediaQuery.of(context).size.height * .1,
                        0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.pink[500]),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            height: MediaQuery.of(context).size.height * .2,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.pink),
            child: Center(
              child: Text(
                "Image",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Text(
            "CLICK AND GET REWARDED",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width * .05),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 10),
            child: Text(
              "Earn on EXy coin for every\npile of garbage you report",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[300],
                  fontSize: MediaQuery.of(context).size.width * .045),
            ),
            width: MediaQuery.of(context).size.width * .55,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 5,
                width: MediaQuery.of(context).size.width * .1,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 5,
                width: MediaQuery.of(context).size.width * .1,
                color: Colors.pink,
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 5,
                width: MediaQuery.of(context).size.width * .1,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Text("by continuing you agree to our"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Terms & Condition",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
              Text(" & "),
              Text(
                "Privacy Policy",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                            return screen4_mobile_enter();
                          }));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 5, left: 5, top: 15),
                  width: MediaQuery.of(context).size.width * .4,
                  height: MediaQuery.of(context).size.height * .08,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * .025),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 5, left: 5, top: 15),
                width: MediaQuery.of(context).size.width * .4,
                height: MediaQuery.of(context).size.height * .08,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * .025),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
