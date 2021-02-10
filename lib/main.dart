import 'package:breezy_task/screen2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
      home: screens()));
}

//Screen1

class screens extends StatefulWidget {
  @override
  _screensState createState() => _screensState();
}

class _screensState extends State<screens> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [Scaffold(), screen1()],
      ),
    );
  }
}

class screen1 extends StatefulWidget {
  @override
  _screen1State createState() => _screen1State();
}

class _screen1State extends State<screen1> with TickerProviderStateMixin {
  AnimationController _controllerB;
  Animation _animationB;
  AnimationController _controllerget;
  Animation _animationget;
  double opacity_get = 0;
  double opacity = 0;
  double get_started = 100;
  double xoffset = 0;
  double yoffset = 0;
  double scalefactor = 1;
  AnimationController _container;
  Animation _container_animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //container reverse animation controller starts here
    _container =
        AnimationController(vsync: this, duration: Duration(milliseconds: 550));
    _container_animation =
        CurvedAnimation(parent: _container, curve: Curves.ease)
          ..addListener(() {
            if (_container_animation.isCompleted) {
              setState(() {
                yoffset = 0;
              });
            }
          });
    //contaier reverse animation controller ends here
    _controllerB =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _controllerget =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animationget = CurvedAnimation(parent: _controllerget, curve: Curves.ease)
      ..addListener(() {
        setState(() {
          opacity_get = _animationget.value;
        });
      });

    _animationB = CurvedAnimation(parent: _controllerB, curve: Curves.ease)
      ..addListener(() {
        setState(() {
          opacity = _animationB.value;
        });

        if (_animationB.isCompleted) {
          print(_animationB.value);
          _controllerget.forward();
        }
      });
    _controllerB.forward(from: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 550),
      transform: Matrix4.translationValues(xoffset, yoffset, 0)
        ..scale(scalefactor),
      child: Scaffold(
        body: Stack(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .275),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "B",
                    style: TextStyle(
                        color: Colors.white.withOpacity(opacity),
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * .4),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .6 +
                      get_started -
                      get_started * opacity),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () async {
                      setState(() {
                        yoffset = -MediaQuery.of(context).size.height;
                      });
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
                                return screen2();
                              }));
                      _container.forward();
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * .075,
                      width: MediaQuery.of(context).size.width * .35,
                      decoration: BoxDecoration(
                        color: Colors.pink.withOpacity(opacity),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                              color: Colors.white.withOpacity(opacity),
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.width * .05),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
//end
