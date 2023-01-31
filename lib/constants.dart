import 'package:flutter/material.dart';

const kWhiteColor = Colors.white;
const kChatEmailColor = Colors.white54;
const kSenderBoxColor = Colors.white12;
const kLoginButtonColor = Colors.blue;
const kSendButtonColor = Colors.blue;
var kRegisterButtonColor = Colors.yellow.shade900;
const kBackgroundColor = Colors.white12;

const kBackColorDecoration = BoxDecoration(
    gradient: LinearGradient(colors: [
  Color.fromRGBO(255, 188, 117, 0.2),
  Color.fromRGBO(255, 165, 0, 0.9),
], begin: Alignment.topRight, end: Alignment.bottomLeft));

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.white60, width: 1),
  ),
);
const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  fillColor: Colors.white70,
  filled: true,
  hintStyle: TextStyle(color: Colors.black45),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
