import 'package:breezy_task/screen3.dart';
import 'package:flutter/material.dart';

class screen2 extends StatefulWidget {
  @override
  _screen2State createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  double x = 0, y = 150;
  Map colors = {
    "english": false,
    "hindi": false,
    "marathi": false,
    "gujarat": false,
    "bengali": false,
    "tamil": false,
    "kannada": false,
    "telegu": false
  };
  String key = "";
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .05,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .05,
                  bottom: MediaQuery.of(context).size.height * .1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "B",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.height * .1,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 20),
                    child: Text(
                      "Please select a language",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.height * .035),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Container()),
                        InkWell(
                          onTap: () {
                            setState(() {
                              colors["english"] = true;
                              if (key != "" && key != "english") {
                                colors[key] = false;
                              }
                              key = "english";
                              y = 0;
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * .09,
                            width: MediaQuery.of(context).size.width * .35,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(child: Container()),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.height * .035,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors["english"]
                                          ? Colors.red
                                          : Colors.white),
                                ),
                                Expanded(child: Container()),
                                Text(
                                  "English",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .03,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(child: Container()),
                              ],
                            ),
                          ),
                        ),
                        Expanded(child: Container()),
                        InkWell(
                          onTap: () {
                            setState(() {
                              y = 0;
                              colors["hindi"] = true;
                              if (key != "" && key != "hindi") {
                                colors[key] = false;
                              }
                              key = "hindi";
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * .09,
                            width: MediaQuery.of(context).size.width * .35,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(child: Container()),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.height * .035,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors["hindi"]
                                          ? Colors.red
                                          : Colors.white),
                                ),
                                Expanded(child: Container()),
                                Text(
                                  "Hindi",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .03,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(child: Container()),
                              ],
                            ),
                          ),
                        ),
                        Expanded(child: Container()),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Container()),
                        InkWell(
                          onTap: () {
                            setState(() {
                              y = 0;
                              colors["marathi"] = true;
                              if (key != "" && key != "marathi") {
                                colors[key] = false;
                              }
                              key = "marathi";
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * .09,
                            width: MediaQuery.of(context).size.width * .35,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(child: Container()),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.height * .035,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors["marathi"]
                                          ? Colors.red
                                          : Colors.white),
                                ),
                                Expanded(child: Container()),
                                Text(
                                  "Marathi",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .03,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(child: Container()),
                              ],
                            ),
                          ),
                        ),
                        Expanded(child: Container()),
                        InkWell(
                          onTap: () {
                            setState(() {
                              y = 0;
                              colors["gujarat"] = true;
                              if (key != "" && key != "gujarat") {
                                colors[key] = false;
                              }
                              key = "gujarat";
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * .09,
                            width: MediaQuery.of(context).size.width * .35,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(child: Container()),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.height * .035,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors["gujarat"]
                                          ? Colors.red
                                          : Colors.white),
                                ),
                                Expanded(child: Container()),
                                Text(
                                  "Gujarat",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .03,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(child: Container()),
                              ],
                            ),
                          ),
                        ),
                        Expanded(child: Container()),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Container()),
                        InkWell(
                          onTap: () {
                            y = 0;
                            setState(() {
                              colors["bengali"] = true;
                              if (key != "" && key != "bengali") {
                                colors[key] = false;
                              }
                              key = "bengali";
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * .09,
                            width: MediaQuery.of(context).size.width * .35,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(child: Container()),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.height * .035,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors["bengali"]
                                          ? Colors.red
                                          : Colors.white),
                                ),
                                Expanded(child: Container()),
                                Text(
                                  "Bengali",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .03,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(child: Container()),
                              ],
                            ),
                          ),
                        ),
                        Expanded(child: Container()),
                        InkWell(
                          onTap: () {
                            y = 0;
                            setState(() {
                              colors["tamil"] = true;
                              if (key != "" && key != "tamil") {
                                colors[key] = false;
                              }
                              key = "tamil";
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * .09,
                            width: MediaQuery.of(context).size.width * .35,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(child: Container()),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.height * .035,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors["tamil"]
                                          ? Colors.red
                                          : Colors.white),
                                ),
                                Expanded(child: Container()),
                                Text(
                                  "Tamil",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .03,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(child: Container()),
                              ],
                            ),
                          ),
                        ),
                        Expanded(child: Container()),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Container()),
                        InkWell(
                          onTap: () {
                            y = 0;
                            setState(() {
                              colors["kannada"] = true;
                              if (key != "" && key != "kannada") {
                                colors[key] = false;
                              }
                              key = "kannada";
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * .09,
                            width: MediaQuery.of(context).size.width * .35,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(child: Container()),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.height * .035,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors["kannada"]
                                          ? Colors.red
                                          : Colors.white),
                                ),
                                Expanded(child: Container()),
                                Text(
                                  "Kannada",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .03,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(child: Container()),
                              ],
                            ),
                          ),
                        ),
                        Expanded(child: Container()),
                        InkWell(
                          onTap: () {
                            setState(() {
                              y = 0;
                              colors["telegu"] = true;
                              if (key != "" && key != "telegu") {
                                colors[key] = false;
                              }
                              key = "telegu";
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * .09,
                            width: MediaQuery.of(context).size.width * .35,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(child: Container()),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.height * .035,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors["telegu"]
                                          ? Colors.red
                                          : Colors.white),
                                ),
                                Expanded(child: Container()),
                                Text(
                                  "Telegu",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .03,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(child: Container()),
                              ],
                            ),
                          ),
                        ),
                        Expanded(child: Container()),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .15,
                    child: Center(
                      child: InkWell(
                        onTap: () {
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
                                    return screen3();
                                  }));
                        },
                        child: AnimatedContainer(
                          height: MediaQuery.of(context).size.height * .075,
                          width: MediaQuery.of(context).size.width * .7,
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(15)),
                          duration: Duration(milliseconds: 250),
                          transform: Matrix4.translationValues(x, y, 0),
                          child: Center(
                            child: Text(
                              "Proceed",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: MediaQuery.of(context).size.height *
                                      .035),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
