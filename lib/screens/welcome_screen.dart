import 'package:flash_chat_starting_project/screens/login_screen.dart';
import 'package:flash_chat_starting_project/screens/registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '/constants.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
      upperBound: 1,
    );
    animation = CurvedAnimation(parent: controller, curve: Curves.bounceIn);
    controller.forward();
    animation.addStatusListener((status) {});
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          decoration: kBackColorDecoration,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Hero(
                      tag: 'logo',
                      child: SizedBox(
                        height: animation.value * 100,
                        child: Image.asset('images/amls-logo.png'),
                      ),
                    ),
                    Flexible(
                      child: TypewriterAnimatedTextKit(
                        speed: const Duration(milliseconds: 200),
                        text: const ['AM Language'],
                        textStyle: const TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.black45,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 48.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Material(
                    elevation: 5.0,
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.id);
                        //Go to login screen.
                      },
                      minWidth: 200.0,
                      height: 42.0,
                      child: const Text(
                        'Log In',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Material(
                    elevation: 5.0,
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RegistrationScreen.id);
                        //Go to login screen.
                      },
                      minWidth: 200.0,
                      height: 42.0,
                      child: const Text(
                        'Register',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
