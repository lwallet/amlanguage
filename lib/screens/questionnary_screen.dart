import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Questionnary_Screen extends StatefulWidget {
  static const id = 'questionnary_screen';

  @override
  _Questionnary_ScreenState createState() => _Questionnary_ScreenState();
}

class _Questionnary_ScreenState extends State<Questionnary_Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text("Questionnary"),
        ),
        body: Column(children: [
          Expanded(
            child: Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  FormButton("https://forms.office.com/e/nGMQQ4r7na", "First impression Internship"),
                  FormButton("https://forms.office.com/form2", "First impression Teenager"),
                  FormButton("https://forms.office.com/form3", "First impression Adult"),
                  SizedBox(height: 20),
                  FormButton("https://forms.office.com/e/k2RJHE1BHS", "In process Internship"),
                  FormButton("https://forms.office.com/e/eUr2AZ2z8q", "In process Teenager"),
                  FormButton("https://forms.office.com/e/5BZT3BmLW0", "In process Adult"),
                  SizedBox(height: 20),
                  FormButton("https://forms.office.com/e/qaUivXTm5T", "End of stay Internship"),
                  FormButton("https://forms.office.com/e/dHitgpdcsG", "End of stay Teenager"),
                  FormButton("https://forms.office.com/e/5jjwhE7GwV", "End of stay Adult"),
                  FormButton("https://forms.office.com/e/e2bvYYbVge", "Teenage Group End of stay"),
                ],
              ),
            ),
          ),
        ],),);
  }

  Widget FormButton(String formUrl, String formNumber) {
    return Container(
      height: 50,

      width: 100,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: () async {
          if (await canLaunch(formUrl)) {
            await launch(formUrl);
          } else {
            throw 'Could not launch $formUrl';
          }
        },
        child: Text(formNumber, style: TextStyle(color: Colors.black),),
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
