import 'package:flutter/material.dart';
import 'package:flutter_wafast/screens/LoginPage.dart';
import 'package:flutter_wafast/screens/SignInPage.dart';
import 'package:flutter_wafast/screens/Verify.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 300),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                icon: const Icon(
                  FontAwesomeIcons.chevronCircleLeft,
                  color: Colors.black45,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 80, right: 80),
            child: Image.asset(
              "assets/images/signup_image.png",
              fit: BoxFit.fill,
            ),
          ),
          const Text("Let's Get Started!",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Create an account to bullet to get all features",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 35, right: 35),
                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        filled: false,
                        labelText: "Name*",
                        contentPadding: EdgeInsets.only(left: 20, bottom: 20),
                        labelStyle: TextStyle(
                          fontSize: 13,
                          // color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    keyboardType: TextInputType.name,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 35, right: 35),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "+91 xxx xxx xx xx",
                        labelText: "Phone Number*",
                        fillColor: Colors.black,
                        contentPadding: EdgeInsets.only(left: 20, bottom: 20),
                        labelStyle: TextStyle(
                          fontSize: 13,
                          // color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    keyboardType: TextInputType.phone,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 35, right: 35),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "email@address.com",
                        labelText: "Email*",
                        contentPadding: EdgeInsets.only(left: 20, bottom: 20),
                        labelStyle: TextStyle(
                          fontSize: 13,
                          // color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 35, right: 35),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password*",
                        contentPadding: EdgeInsets.only(left: 20, top: 10),
                        labelStyle: TextStyle(
                          fontSize: 13,
                          // color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Verify()));
                    },
                    child: const Text(
                      "Create",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurple,
                        padding: const EdgeInsets.only(left: 120, right: 120),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                    const SizedBox(width: 5.0),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInPage()));
                      },
                      child: const Text(
                        "Sign in here",
                        style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontSize: 10,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
