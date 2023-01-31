import 'package:flutter/material.dart';
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
var amstory = "One of the first English Language schools in Malta, "
    "AM Language has a history for offering quality English "
    "Language courses and customer satisfaction. Established in 1987, "
    "AM Language is a founder member of FELTOM (Federation of English "
    "Language Teaching Organizations of Malta), the association for "
    "quality English Language schools in Malta. AM Language is licensed "
    "by the Ministry of Education in Malta and all our departments are "
    "ISO 9001 accredited.";
