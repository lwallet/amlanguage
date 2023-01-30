import 'package:conditional_questions/conditional_questions.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Questionnary_Screen extends StatefulWidget {
  static const id = 'questionnary_screen';

  @override
  _Questionnary_ScreenState createState() => _Questionnary_ScreenState();
}

class _Questionnary_ScreenState extends State<Questionnary_Screen> {
  String _selectedFormUrl = "https://forms.office.com/form1";
  late InAppWebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forms"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.vertical,

                children: [
                  Container(
                    width: 80,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          _selectedFormUrl = "https://forms.office.com/form1";
                        });
                      },
                      child: Text("Form 1"),
                    ),
                  ),
                  Container(
                    width: 80,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          _selectedFormUrl = "https://forms.office.com/form2";
                        });
                      },
                      child: Text("Form 2"),
                    ),
                  ),
                  Container(
                    width: 80,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          _selectedFormUrl = "https://forms.office.com/form3";
                        });
                      },
                      child: Text("Form 3"),
                    ),
                  ),
                  Container(
                    width: 80,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          _selectedFormUrl = "https://forms.office.com/form4";
                        });
                      },
                      child: Text("Form 4"),
                    ),
                  ),
                  Container(
                    width: 80,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          _selectedFormUrl = "https://forms.office.com/form5";
                        });
                      },
                      child: Text("Form 5"),
                    ),
                  ),
                  Container(
                    width: 80,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          _selectedFormUrl = "https://forms.office.com/form6";
                        });
                      },
                      child: Text("Form 6"),
                    ),
                  ),
                  Container(
                    width: 80,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          _selectedFormUrl = "https://forms.office.com/form7";
                        });
                      },
                      child: Text("Form 7"),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
} /*import 'package:flutter/material.dart';
import 'package:flash_chat_starting_project/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:conditional_questions/conditional_questions.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
class Questionnary_Screen extends StatefulWidget {
  static const id = 'questionnary_screen';
  @override
  _Questionnary_ScreenState createState() => _Questionnary_ScreenState();
}

class _Questionnary_ScreenState extends State<Questionnary_Screen> {
  late InAppWebViewController controller;
  String url='https://docs.google.com/forms/d/e/1FAIpQLSdw2JpWbdQUuCePiETUnnBuFrAOJ4wVcOt5Fvt1ACOZydU6ng/viewform?usp=sf_link';
  //String url ='https://forms.office.com/Pages/ResponsePage.aspx?id=WfMuUNgvSE-ET-88eYuquL9twe7g7t9GplrSTUgkvRhUQjVKM1ROOENBUE0xNzJYOFNPSzJIRDkxRi4u';
  double progress = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Questionnary'),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(padding: const EdgeInsets.all(10),
                  child: progress <1.0 ? LinearProgressIndicator(value: progress):Container()),
              Expanded(child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                child: InAppWebView(
                  initialUrlRequest: URLRequest(
                    url: Uri.parse(url),


                  ),
                  onWebViewCreated: (webViewController) => controller = webViewController,
                  onLoadStart: (controller,url){
                    setState(() {
                      this.url=url as String;
                    });
                  } ,
                  onLoadStop: (controller,url){
                    setState(() {
                      this.url=url as String;
                    });
                  },
                  onProgressChanged: (controller,progress){
                    setState(() {
                      this.progress=progress/100;
                    });
                  } ,
                ),
              )

              )],
          ),
        ),
      ),); }}*/
