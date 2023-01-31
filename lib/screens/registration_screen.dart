import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '/constants.dart';
import 'package:flutter/material.dart';
import 'chat_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static const id = 'register';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  late String passwordConfirmation;
  late String email;
  late String password;
  bool showSpinner = false;
  final _auth = FirebaseAuth.instance;
  void _showErrorDialog(String error) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Error'),
          content:  Text(error),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          decoration: kBackColorDecoration,
          child: ModalProgressHUD(
            inAsyncCall: showSpinner,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Hero(
                      tag: 'logo',
                      child: Container(
                        height: 100.0,
                        child: Image.asset('images/amls-logo.png'),
                        transform: Matrix4.rotationZ(0.1),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 46.0,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.black45),
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter your Email or Student code',
                      fillColor: Colors.white70,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                      keyboardType: TextInputType.visiblePassword,
                      textAlign: TextAlign.center,
                      obscureText: true,
                      style: const TextStyle(color: Colors.black45),
                      onChanged: (value) {
                        password = value;
                      },
                      decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Enter your password',
                          fillColor: Colors.white70)),
                  const SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                      keyboardType: TextInputType.visiblePassword,
                      textAlign: TextAlign.center,
                      obscureText: true,
                      style: const TextStyle(color: Colors.black45),
                      onChanged: (value) {
                        passwordConfirmation = value;
                      },
                      decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Confirm your password',
                          fillColor: Colors.white70)),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Material(
                      color: Colors.blueAccent,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(30.0)),
                      elevation: 5.0,
                      child: MaterialButton(
                        onPressed: () async {
                          if (password == passwordConfirmation) {
                            setState(() {
                              showSpinner = true;
                            });
                            try {
                              final newUser =
                                  await _auth.createUserWithEmailAndPassword(
                                      email: email, password: password);

                              if (newUser != null) {
                                Navigator.pushNamed(context, ChatScreen.id);
                              }
                              else {_showErrorDialog('Email already used');}
                              setState(() {
                                showSpinner = false;
                              });
                            } catch (e) {
                              print(e);
                            }
                          } else {
                            _showErrorDialog('Passwords do not match');
                          }
                        },
                        minWidth: 200.0,
                        height: 20.0,
                        child: const Text(
                          'Register',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
