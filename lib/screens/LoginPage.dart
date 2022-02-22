import 'package:flutter/material.dart';
import 'package:flutter_wafast/screens/SignInPage.dart';
import 'package:flutter_wafast/screens/SignUpPage.dart';
import 'package:flutter_wafast/screens/booking.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              left: 20,
              right: 20,
              child: Container(
                height: 140,
                width: 220,
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                ),
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 200, top: 15),
                      child: Text(
                        "Orders",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 30,
              right: 30,
              bottom: 350,
              child: Card(
                elevation: 8,
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(2, 2),
                        )
                      ]),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20, right: 150),
                        child: Text(
                          "Welcome Back",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 12, right: 65),
                        child: Text(
                          "Login to Your Bullet \n Account!",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignInPage()));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.deepPurple,
                              padding:
                                  const EdgeInsets.only(left: 100, right: 100),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 130),
                child: Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.black87, fontSize: 15),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 200),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    side: const BorderSide(color: Colors.deepPurple),
                    padding: const EdgeInsets.only(left: 100, right: 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 571,
              left: 20,
              right: 20,
              child: Container(
                width: 50,
                height: 70,
                decoration: const BoxDecoration(color: Colors.deepPurple),
                child: Row(
                  children: [
                    Column(
                      children: const [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 10, left: 120, right: 15),
                          child: Text(
                            "Book Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 120),
                          child: Text(
                            "Book Without Sign Up",
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 60, bottom: 12),
                      child: Icon(FontAwesomeIcons.chevronCircleRight),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            elevation: 10,
            type: BottomNavigationBarType.fixed,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.book_online_outlined),
                label: "Booking",
                backgroundColor: Colors.transparent,
              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BookingPage()));
                    },
                    child: const Icon(Icons.library_add_outlined)),
                label: "New Booking",
                backgroundColor: Colors.transparent,
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.chat_sharp),
                label: "Chats",
                backgroundColor: Colors.transparent,
              ),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.verified_user_sharp),
                  label: "Profile",
                  backgroundColor: Colors.transparent),
            ]),
      ),
    );
  }
}
