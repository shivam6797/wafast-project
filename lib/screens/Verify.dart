import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wafast/screens/LoginPage.dart';
import 'package:flutter_wafast/screens/Orders.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Verify extends StatelessWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 48, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    icon: const Icon(
                      FontAwesomeIcons.chevronCircleLeft,
                      color: Colors.black45,
                    )),
                const Text(
                  "Back",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40, right: 80),
            child: Text(
              "Verify Your Phone Number",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, right: 175),
            child: Text(
              "Enter Your OTP Code here",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildCodeNumberBox("6"),
                buildCodeNumberBox("7"),
                buildCodeNumberBox("9"),
                buildCodeNumberBox("7"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 150),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Not Received",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Resent OTP",
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Orders()));
              },
              child: const Text(
                "Done",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple,
                  padding: const EdgeInsets.only(left: 130, right: 130),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(top: 290),
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text.rich(
                TextSpan(
                    text: "By Clicking Create I agree with",
                    style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 11,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: " Terms, Conditions \n ",
                          style: const TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 11,
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()..onTap = () {}),
                      TextSpan(
                          text: "            and Agreements of ",
                          style: const TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 11,
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()..onTap = () {}),
                      const TextSpan(
                          text: " Bullet Parcel",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold))
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildCodeNumberBox(String codeNumber) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        width: 60,
        height: 60,
        child: Container(
          decoration: const BoxDecoration(
              color: Color(0xFFF6F5FA),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 25.0,
                    spreadRadius: 1,
                    offset: Offset(0.0, 0.75))
              ]),
          child: Center(
            child: Text(
              codeNumber,
              style: const TextStyle(
                color: Color(0xFF1F1F1F),
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
