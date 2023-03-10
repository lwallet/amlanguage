import 'package:flash_chat_starting_project/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';
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
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.orange,
                      ),
                      child: SpecialText(
                          "Chat", screenWidth / 25, const Color(0xffffffff)),
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
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.deepOrangeAccent,
                      ),
                      child: SpecialText("Questionnaires", screenWidth / 25,
                          const Color(0xFFFFFFFF)),
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
                    padding: const EdgeInsets.fromLTRB(150.0, 30.0, 8.0, 0.0),
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
                amstory,
                screenWidth / 25,
                const Color(0xff000000),
              ),
            ),
            ElevatedButton(
              child: const Text(
                "Click here to get more information",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                const url = "https://amlanguage.com/about-us/";
                if (await canLaunchUrl(Uri.parse(url))) {
                  await launchUrl(Uri.parse(url));
                } else {
                  throw 'Could not launch $url';
                }
                //print("information has been clicked");
              },
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 0.0),
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
                    children: const [
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
                    children: const [
                      Text(
                        "299 Triq Manwel Dimech",
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Monday to Friday",
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "Sliema, SLM 1054 - Malta",
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "08:30 to 17:30",
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    width: screenWidth,
                    child: Image.asset("images/AM_Language_localisation.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      child: const Text(
                        "Click here to find us in realtime",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () async {
                        const url =
                            "https://www.google.com/maps/place/AM+Language/"
                            "@35.9095619,14.4977557,17z/data=!3m1!4b1!4m6!3m5!1s0x130"
                            "e4539a1595a67:0x4d45d767f96a2a0d!8m2!3d35."
                            "9095576!4d14.4999444!16s%2Fg%2F1tf62d7k";
                        if (await canLaunchUrl(Uri.parse(url))) {
                          await launchUrl(Uri.parse(url));
                        } else {
                          throw 'Could not launch $url';
                        }
                        //print("Map has been clicked");
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
                          padding: const EdgeInsets.all(10.0),
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
                                    //print("Sales has been clicked");
                                  },
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.deepOrangeAccent,
                                    side: const BorderSide(
                                        width: 1.0,
                                        color: Colors.deepOrangeAccent),
                                  ),
                                  child: Text(buttonTextSalesReservations),
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
                                    //print("Accommodation has been clicked");
                                  },
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.deepOrangeAccent,
                                    side: const BorderSide(
                                        width: 1.0,
                                        color: Colors.deepOrangeAccent),
                                  ),
                                  child: Text(buttonTextAccommodation),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
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
                                    //print("Leisure Department has been clicked");
                                  },
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.deepOrangeAccent,
                                    side: const BorderSide(
                                        width: 1.0,
                                        color: Colors.deepOrangeAccent),
                                  ),
                                  child: Text(buttonTextLeisureDepartment),
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
                                    //print("Taxi Transfer has been clicked");
                                  },
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.deepOrangeAccent,
                                    side: const BorderSide(
                                        width: 1.0,
                                        color: Colors.deepOrangeAccent),
                                  ),
                                  child: Text(buttonTextTaxiTransfer),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
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
                                    // print("info@amlanguage.com has been clicked");
                                  },
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.deepOrangeAccent,
                                    side: const BorderSide(
                                        width: 1.0,
                                        color: Colors.deepOrangeAccent),
                                  ),
                                  child: Text(buttonTextInfoAtAmlanguage),
                                ),
                              ),
                              SizedBox(
                                width: screenHeight / 6,
                                height: screenWidth / 8,
                                child: OutlinedButton(
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
                                    // print(" Other emengencies has been clicked");
                                  },
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.deepOrangeAccent,
                                    side: const BorderSide(
                                        width: 1.0,
                                        color: Colors.deepOrangeAccent),
                                  ),
                                  child: Text(buttonTextEmergancy),
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
