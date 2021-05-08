import 'package:flash_chat_app/components/RoundButton.dart';
import 'package:flash_chat_app/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_Screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
// with TickerProviderStateMixin
{
  // AnimationController controller, controller2;
  // Animation animation, animation2;

  @override
  void initState() {
    super.initState();
    // controller = AnimationController(
    //   duration: Duration(seconds: 1), vsync: this,
    //   // upperBound: 100
    // );
    // controller2 = AnimationController(
    //   duration: Duration(seconds: 1),
    //   vsync: this,
    // );
    // controller2.forward();
    // controller.forward();
    // animation2 = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    //
    // animation =
    //     ColorTween(begin: Colors.red, end: Colors.green).animate(controller);
    // animation.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     controller.reverse(from: 1);
    //   } else if (status == AnimationStatus.dismissed) {
    //     controller.forward();
    //   }
    // });
    // controller.addListener(() {
    //   setState(() {});
    //   print(animation.value);
    // });

    // controller2.addListener(() {
    //   setState(() {});
    //   print(animation.value);
    // });
  }

  @override
  void dispose() {
    // controller.dispose();
    // controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Flexible(
                  child: Hero(
                    tag: 'logo',
                    child: Container(
                      child: Image.asset('images/logo.png'),
                      //  height: animation.value * 100,
                      height: 60,
                    ),
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Flash Chat',
                      textStyle: TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.black),
                    )
                  ],
                  // '${controller.value.toInt()}%',
                  // textStyle: TextStyle(
                  //   fontSize: 45.0,
                  //   fontWeight: FontWeight.w900,
                  // ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundButton(
              labelText: 'Log In',
              color: Colors.lightBlueAccent,
              onPressed: () {
                //Go to login screen.

                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundButton(
              labelText: 'Register',
              color: Colors.blueAccent,
              onPressed: () {
                //Go to login screen.

                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
