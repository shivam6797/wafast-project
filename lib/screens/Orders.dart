import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: true,
      right: true,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text("Orders"),
            titleSpacing: 00.0,
            centerTitle: true,
            toolbarHeight: 70.2,
            backgroundColor: Colors.deepPurple,
            automaticallyImplyLeading: false,
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(40.0), child: menu()),
          ),
          body: TabBarView(children: <Widget>[
            activeContainer(),
            completeConatiner(),
            inboxContainer()
          ]),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: 0,
              elevation: 10,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.book_online_outlined),
                  label: "Booking",
                  backgroundColor: Colors.transparent,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.library_add_outlined),
                  label: "New Booking",
                  backgroundColor: Colors.transparent,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat_sharp),
                  label: "Chats",
                  backgroundColor: Colors.transparent,
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.verified_user_sharp),
                    label: "Profile",
                    backgroundColor: Colors.transparent),
              ]),
        ),
      ),
    );
  }

  Widget activeContainer() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 199),
      child: Card(
        elevation: 5,
        child: Container(
          width: 150,
          height: 100,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 20),
                    child: Text(
                      "₹44",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                        alignment: Alignment.center,
                        width: 50,
                        height: 20,
                        // color: Colors.grey,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Text(
                          "44116",
                          style: TextStyle(
                              color: Colors.white54,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, right: 190),
                child: Text(
                  "Searching for a courier",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                children: [
                  Stepper(
                    steps: const [
                      Step(
                          title: Text(
                            "A-56, Sector 63 Rd, A Block, Sector 65, Noida,Uttar Pradesh \n 239867, India",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          content: Text("")),
                      Step(
                          title: Text(
                            "A-56, Sector 63 Rd, A Block, Sector 65, Noida,Uttar Pradesh \n 239867, India",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          content: Text("")),
                    ],
                    onStepTapped: (int newIndex) {
                      setState(() {
                        _currentStep = newIndex;
                      });
                    },
                    currentStep: _currentStep,
                    onStepContinue: () {
                      if (_currentStep != 2) {
                        setState(() {
                          _currentStep += 1;
                        });
                      }
                    },
                    onStepCancel: () {
                      if (_currentStep != 0) {
                        setState(() {
                          _currentStep -= 1;
                        });
                      }
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Card completeConatiner() {
    return Card(
      elevation: 5,
      child: Container(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: TextField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      fillColor: Colors.grey,
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Search Booking"),
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      "₹44",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Cancelled",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Stepper(
                    steps: const [
                      Step(
                          title: Text(
                            "A-56, Sector 63 Rd, A Block, Sector 65, Noida,Uttar Pradesh \n 239867, India",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          content: Text("")),
                      Step(
                          title: Text(
                            "A-56, Sector 63 Rd, A Block, Sector 65, Noida,Uttar Pradesh \n 239867, India",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          content: Text("")),
                    ],
                    onStepTapped: (int newIndex) {
                      setState(() {
                        _currentStep = newIndex;
                      });
                    },
                    currentStep: _currentStep,
                    onStepContinue: () {
                      if (_currentStep != 2) {
                        setState(() {
                          _currentStep += 1;
                        });
                      }
                    },
                    onStepCancel: () {
                      if (_currentStep != 0) {
                        setState(() {
                          _currentStep -= 1;
                        });
                      }
                    },
                  ),
                  const Divider(
                    color: Colors.deepPurpleAccent,
                    thickness: 0.0,
                  ),
                ],
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 95),
                    child: Text(
                      "₹447",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Completed 14 November 3.40 PM",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "A-56, Sector 63 Rd, A Block, Sector 65, Noida,Uttar Pradesh \n 239867, India",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  RatingBar.builder(
                    initialRating: 2,
                    minRating: 1,
                    itemSize: 20.0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.deepPurple,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              )
            ],
          )),
    );
  }

  Padding inboxContainer() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 300),
      child: Card(
        elevation: 5,
        child: Container(
          width: 100,
          height: 20,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 20),
                    child: Text(
                      "Completed",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                        alignment: Alignment.center,
                        width: 50,
                        height: 20,
                        // color: Colors.grey,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Text(
                          "987678",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 13,
                    height: 13,
                    // color: Colors.green,
                    margin: const EdgeInsets.only(top: 30, left: 20),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 35, left: 20),
                    child: Text(
                      "Naya Bans,Naya Bans Village,Sector 15,\n Noida Uttar Pradesh 201301,India",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 190),
                child: RatingBar.builder(
                  initialRating: 2,
                  minRating: 1,
                  itemSize: 20.0,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.deepPurple,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 230),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.deepPurple),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)))),
                  child: const Text(
                    "RATE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget menu() {
    return Container(
      color: Colors.white,
      child: const TabBar(
        labelColor: Colors.deepPurpleAccent,
        unselectedLabelColor: Colors.black,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.deepPurpleAccent,
        tabs: [
          Tab(
            text: "ACTIVE",
          ),
          Tab(
            text: "COMPLETED",
          ),
          Tab(
            text: "INBOX",
          )
        ],
      ),
    );
  }
}
