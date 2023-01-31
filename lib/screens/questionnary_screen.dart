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
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text("Questionnary"),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: 200,
                height: 200,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    FormButton("https://forms.office.com/e/nGMQQ4r7na",
                        "First impression Internship"),
                    const SizedBox(height: 10),
                    FormButton("https://forms.office.com/e/SvdSghdB0C",
                        "Host Organisation Evaluation"),
                    const SizedBox(height: 10),
                    FormButton("https://forms.office.com/e/WhbNCSXZ3d",
                        "Intern Weekly Questionnary"),
                    const SizedBox(height: 30),
                    FormButton("https://forms.office.com/e/k2RJHE1BHS",
                        "In process Internship"),
                    const SizedBox(height: 10),
                    FormButton("https://forms.office.com/e/eUr2AZ2z8q",
                        "In process Teenager"),
                    const SizedBox(height: 10),
                    FormButton("https://forms.office.com/e/5BZT3BmLW0",
                        "In process Adult"),
                    const SizedBox(height: 30),
                    FormButton("https://forms.office.com/e/qaUivXTm5T",
                        "End of stay Internship"),
                    const SizedBox(height: 10),
                    FormButton("https://forms.office.com/e/dHitgpdcsG",
                        "End of stay Teenager"),
                    const SizedBox(height: 10),
                    FormButton("https://forms.office.com/e/5jjwhE7GwV",
                        "End of stay Adult"),
                    const SizedBox(height: 10),
                    FormButton("https://forms.office.com/e/e2bvYYbVge",
                        "Teenage Group End of stay"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget FormButton(String formUrl, String formNumber) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.grey,
      ),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white54),
        ),
        onPressed: () async {
          if (await canLaunch(formUrl)) {
            await launch(formUrl);
          } else {
            throw 'Could not launch $formUrl';
          }
        },
        child: Text(
          formNumber,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
