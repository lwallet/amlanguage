import 'package:flash_chat_starting_project/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'questionnary_screen.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({super.key, required this.title});
  static const String id = 'information_screen';

  final String title;

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  String buttonTextSalesReservations = "Sales & reservations";
  String buttonTextAccommodation = "Accommodation";
  String buttonTextLeisureDepartment = "Leisure Department";
  String buttonTextTaxiTransfer = "Taxi Transfer";
  String buttonTextInfoAtAmlanguage = "info@amlanguage.com";
  String buttonTextEmergancy = "All other Emergancy";
  bool isChanged = false;

  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenHeight = screenInfo.size.height;
    final double screenWidth = screenInfo.size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: screenWidth,
              child: Image.asset("images/image001.png"),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: screenWidth / 8,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, ChatScreen.id);
                      },
                      child: SpecialText("Chat", screenWidth / 25, Color(0xffffffff)),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.orange,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: screenWidth / 8,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Questionnary_Screen.id);
                      },
                      child: SpecialText("Questionnaires", screenWidth / 25, Color(0xFFFFFFFF)),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.deepOrangeAccent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(screenHeight / 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "All in one glance",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth / 15,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(150.0, 30.0, 8.0, 0.0),
                    child: Row(
                      children: [
                        Text(
                          "About Us",
                          style: TextStyle(
                              color: Colors.deepOrangeAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth / 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screenHeight / 100),
              child: SpecialText(
                "One of the first English Language schools in Malta, "
                "AM Language has a history for offering quality English "
                "Language courses and customer satisfaction. Established in 1987, "
                "AM Language is a founder member of FELTOM (Federation of English "
                "Language Teaching Organizations of Malta), the association for "
                "quality English Language schools in Malta. AM Language is licensed "
                "by the Ministry of Education in Malta and all our departments are "
                "ISO 9001 accredited.",
                screenWidth / 25, Color(0xff000000),
              ),
            ),
            ElevatedButton(
              child: Text(
                "Click here to get more information",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                final url = "https://amlanguage.com/about-us/";
                if (await canLaunchUrl(Uri.parse(url))) {
                  await launchUrl(Uri.parse(url));
                } else {
                  throw 'Could not launch $url';
                }
                print("information has been clicked");
              },
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Find Us",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth / 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "AM Language",
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Office Hours:",
                        style: TextStyle(
                          color: Colors.black45,

                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("299 Triq Manwel Dimech",style: TextStyle(
                        color: Colors.black45,),),
                      Spacer(),
                      Text("Monday to Friday",style: TextStyle(
                        color: Colors.black45,),),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Sliema, SLM 1054 - Malta",style: TextStyle(
                        color: Colors.black45,),),
                      Spacer(),
                      Text("08:30 to 17:30",style: TextStyle(
                        color: Colors.black45,),),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    width: screenWidth,
                    child: Image.asset("images/AM_Language_localisation.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      child: Text(
                        "Click here to find us in realtime",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () async {
                        final url =
                            "https://www.google.com/maps/place/AM+Language/"
                            "@35.9095619,14.4977557,17z/data=!3m1!4b1!4m6!3m5!1s0x130"
                            "e4539a1595a67:0x4d45d767f96a2a0d!8m2!3d35."
                            "9095576!4d14.4999444!16s%2Fg%2F1tf62d7k";
                        if (await canLaunchUrl(Uri.parse(url))) {
                          await launchUrl(Uri.parse(url));
                        } else {
                          throw 'Could not launch $url';
                        }
                        print("Map has been clicked");
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(screenHeight / 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Contact Us",
                          style: TextStyle(
                            color: Colors.deepOrangeAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth / 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: screenHeight / 6,
                                height: screenWidth / 8,
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      if (isChanged) {
                                        buttonTextSalesReservations =
                                            "Sales & reservations";
                                        isChanged = false;
                                      } else {
                                        buttonTextSalesReservations =
                                            "+356 9940 8943";
                                        isChanged = true;
                                      }
                                    });
                                    print("Sales has been clicked");
                                  },
                                  child: Text(buttonTextSalesReservations),
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.deepOrangeAccent,
                                    side: BorderSide(
                                        width: 1.0,
                                        color: Colors.deepOrangeAccent),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenHeight / 6,
                                height: screenWidth / 8,
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      if (isChanged) {
                                        buttonTextAccommodation =
                                            "Accommodation";
                                        isChanged = false;
                                      } else {
                                        buttonTextAccommodation =
                                            "+356 9943 5415";
                                        isChanged = true;
                                      }
                                    });
                                    print("Accommodation has been clicked");
                                  },
                                  child: Text(buttonTextAccommodation),
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.deepOrangeAccent,
                                    side: BorderSide(
                                        width: 1.0,
                                        color: Colors.deepOrangeAccent),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: screenHeight / 6,
                                height: screenWidth / 8,
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      if (isChanged) {
                                        buttonTextLeisureDepartment =
                                            "Leisure Department";
                                        isChanged = false;
                                      } else {
                                        buttonTextLeisureDepartment =
                                            "+356 9940 8943";
                                        isChanged = true;
                                      }
                                    });
                                    print(
                                        "Leisure Department has been clicked");
                                  },
                                  child: Text(buttonTextLeisureDepartment),
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.deepOrangeAccent,
                                    side: BorderSide(
                                        width: 1.0,
                                        color: Colors.deepOrangeAccent),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenHeight / 6,
                                height: screenWidth / 8,
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      if (isChanged) {
                                        buttonTextTaxiTransfer =
                                            "Taxi Transfer";
                                        isChanged = false;
                                      } else {
                                        buttonTextTaxiTransfer =
                                            "+356 7950 7150";
                                        isChanged = true;
                                      }
                                    });
                                    print("Taxi Transfer has been clicked");
                                  },
                                  child: Text(buttonTextTaxiTransfer),
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.deepOrangeAccent,
                                    side: BorderSide(
                                        width: 1.0,
                                        color: Colors.deepOrangeAccent),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: screenHeight / 6,
                                height: screenWidth / 8,
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      if (isChanged) {
                                        buttonTextInfoAtAmlanguage =
                                            "info@amlanguage.com";
                                        isChanged = false;
                                      } else {
                                        buttonTextInfoAtAmlanguage =
                                            "+356 2132 4242";
                                        isChanged = true;
                                      }
                                    });
                                    print(
                                        "info@amlanguage.com has been clicked");
                                  },
                                  child: Text(buttonTextInfoAtAmlanguage),
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.deepOrangeAccent,
                                    side: BorderSide(
                                        width: 1.0,
                                        color: Colors.deepOrangeAccent),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenHeight / 6,
                                height: screenWidth / 8,
                                child: OutlinedButton(
                                  child: Text(buttonTextEmergancy),
                                  onPressed: () {
                                    setState(() {
                                      if (isChanged) {
                                        buttonTextEmergancy =
                                            "All other Emergancy";
                                        isChanged = false;
                                      } else {
                                        buttonTextEmergancy = " +356 9947 6108";
                                        isChanged = true;
                                      }
                                    });
                                    print(
                                        " Other emengencies has been clicked");
                                  },
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.deepOrangeAccent,
                                    side: BorderSide(
                                        width: 1.0,
                                        color: Colors.deepOrangeAccent),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SpecialText extends StatelessWidget {
  String content;
  double SpecialTextSize;
  Color color;

  SpecialText(this.content, this.SpecialTextSize, this.color);

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(fontSize: SpecialTextSize, color: color),
    );
  }
}
