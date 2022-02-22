import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            "Sign In",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.deepPurple, Colors.deepPurple]),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white),
            tabs: [
              Tab(text: "FOR INDIVIDUAL"),
              Tab(text: "FOR BUSINESS"),
            ],
          ),
        ),
        body: TabBarView(children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: false,
                        hintText: "+91",
                        labelText: "Phone Number*",
                        contentPadding: EdgeInsets.only(top: 20, left: 20),
                        labelStyle: TextStyle(
                          fontSize: 10,
                          // color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    keyboardType: TextInputType.phone,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                        filled: false,
                        hintText: "+91",
                        labelText: "Password*",
                        fillColor: Colors.black,
                        contentPadding: EdgeInsets.only(top: 20, left: 20),
                        labelStyle: TextStyle(
                          fontSize: 10,
                          // color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign In",
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
                const Text(
                  "reset password",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: false,
                        hintText: "+91",
                        labelText: "Phone Number*",
                        contentPadding: EdgeInsets.only(top: 20, left: 20),
                        labelStyle: TextStyle(
                          fontSize: 10,
                          // color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    keyboardType: TextInputType.phone,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                        filled: false,
                        hintText: "+91",
                        labelText: "Password*",
                        fillColor: Colors.black,
                        contentPadding: EdgeInsets.only(left: 20, top: 20),
                        labelStyle: TextStyle(
                          fontSize: 10,
                          // color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign In",
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
                const Text(
                  "reset password",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
