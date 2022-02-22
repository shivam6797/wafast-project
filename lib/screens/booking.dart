import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  bool isSwitched = false;
  bool isSwitch = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.clear_rounded)),
        backgroundColor: Colors.deepPurple,
        title: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(right: 150, top: 20),
              child: Text(
                "New Booking",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 230, bottom: 15),
              child: Text(
                "Clear",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 30),
                  child: Container(
                      width: 150,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              FontAwesomeIcons.stopwatch,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                          Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 25, left: 10),
                                child: Text(
                                  "Delivery Now",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5, top: 5),
                                child: Text(
                                  "from ₹44",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 13),
                            child: Icon(
                              FontAwesomeIcons.chevronCircleRight,
                              color: Colors.white,
                              size: 15.0,
                            ),
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Container(
                      width: 150,
                      height: 70,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              FontAwesomeIcons.calendarAlt,
                              color: Colors.grey,
                              size: 30.0,
                            ),
                          ),
                          Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 25, left: 10),
                                child: Text(
                                  "Schedule",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5, top: 5),
                                child: Text(
                                  "from ₹44",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 25, top: 9),
                            child: Icon(
                              FontAwesomeIcons.chevronCircleRight,
                              color: Colors.grey,
                              size: 15.0,
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "We will assign the nearest courier to pick-up\n and deliver as soon as possible",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 130),
              child: Text(
                "Select Package Weight",
                textScaleFactor: 1.3,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 30),
                  child: Container(
                    width: 60,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepPurple),
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Small",
                            style: TextStyle(color: Colors.white, fontSize: 9),
                          ),
                        ),
                        Icon(
                          FontAwesomeIcons.square,
                          color: Colors.white,
                          size: 20.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Text(
                            "Up to 5KG",
                            style: TextStyle(color: Colors.white, fontSize: 9),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20),
                  child: Container(
                    width: 60,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent),
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Medium",
                            style: TextStyle(color: Colors.black, fontSize: 9),
                          ),
                        ),
                        Icon(
                          FontAwesomeIcons.square,
                          color: Colors.grey,
                          size: 20.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Text(
                            "Up to 10KG",
                            style: TextStyle(color: Colors.black, fontSize: 9),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20),
                  child: Container(
                    width: 60,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent),
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Large",
                            style: TextStyle(color: Colors.black, fontSize: 9),
                          ),
                        ),
                        Icon(
                          FontAwesomeIcons.square,
                          color: Colors.grey,
                          size: 20.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Text(
                            "Up to 15KG",
                            style: TextStyle(color: Colors.black, fontSize: 9),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20),
                  child: Container(
                    width: 60,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent),
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Bulk",
                            style: TextStyle(color: Colors.black, fontSize: 9),
                          ),
                        ),
                        Icon(
                          FontAwesomeIcons.square,
                          color: Colors.grey,
                          size: 20.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Text(
                            "Up to 20KG",
                            style: TextStyle(color: Colors.black, fontSize: 9),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20, right: 220),
                  child: Text(
                    "Deliver Via",
                    textScaleFactor: 1.3,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 30),
                      child: Container(
                        width: 60,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.deepPurple),
                        child: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Icon(
                                FontAwesomeIcons.car,
                                color: Colors.white,
                                size: 25.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 6),
                              child: Text(
                                "Car",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 20),
                      child: Container(
                        width: 60,
                        height: 70,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.transparent),
                        child: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 17),
                              child: Icon(FontAwesomeIcons.biking,
                                  color: Colors.grey),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 7),
                              child: Text(
                                "Bike",
                                style: TextStyle(fontSize: 11),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.08,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Colors.deepPurple),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white),
                                  child: const Center(
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  "Pickup Location",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: TextField(
                              onChanged: (value) {
                                setState(() {});
                              },
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.fromLTRB(
                                      5.0, 10.0, 5.0, 13.0),
                                  filled: true,
                                  fillColor: Colors.indigo[50],
                                  suffixIcon: const Icon(
                                    FontAwesomeIcons.crosshairs,
                                    color: Colors.deepPurple,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(2)),
                                  hintText: "Address",
                                  focusColor: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: TextField(
                              onChanged: (value) {
                                setState(() {});
                              },
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.fromLTRB(
                                      5.0, 10.0, 5.0, 13.0),
                                  filled: true,
                                  fillColor: Colors.indigo[50],
                                  suffixIcon: const Icon(
                                    FontAwesomeIcons.mobileAlt,
                                    color: Colors.deepPurple,
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(2)),
                                  hintText: "Phone number",
                                  focusColor: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Row(
                              children: const [
                                Icon(
                                  FontAwesomeIcons.walking,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Instruction for the Delivery",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Icon(
                                  FontAwesomeIcons.angleDown,
                                  color: Colors.black54,
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: Text(
                                  "The courier will buy out the goods or carry out \n other instruction",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: Text(
                                      "Important Details",
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Icon(
                                      FontAwesomeIcons.angleUp,
                                      color: Colors.black54,
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Column(
                                  children: [
                                    TextField(
                                      onChanged: (value) {
                                        setState(() {});
                                      },
                                      decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.fromLTRB(
                                                  5.0, 10.0, 5.0, 13.0),
                                          filled: true,
                                          fillColor: Colors.indigo[50],
                                          disabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(2)),
                                          hintText: "Contact person",
                                          focusColor: Colors.grey),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {});
                                        },
                                        decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.fromLTRB(
                                                    5.0, 10.0, 5.0, 13.0),
                                            filled: true,
                                            fillColor: Colors.indigo[50],
                                            disabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(2)),
                                            hintText: "Your order number",
                                            focusColor: Colors.grey),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 20),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "Money operations are now \n in instruction for the courier 👆",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.08,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Colors.deepPurple),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white),
                                  child: const Center(
                                    child: Text(
                                      "2",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  "Delivery Location",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: TextField(
                              onChanged: (value) {
                                setState(() {});
                              },
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.fromLTRB(
                                      5.0, 10.0, 5.0, 13.0),
                                  filled: true,
                                  fillColor: Colors.indigo[50],
                                  suffixIcon: const Icon(
                                    FontAwesomeIcons.crosshairs,
                                    color: Colors.deepPurple,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(2)),
                                  hintText: "Address",
                                  focusColor: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: TextField(
                              onChanged: (value) {
                                setState(() {});
                              },
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.fromLTRB(
                                      5.0, 10.0, 5.0, 13.0),
                                  filled: true,
                                  fillColor: Colors.indigo[50],
                                  suffixIcon: const Icon(
                                    FontAwesomeIcons.mobileAlt,
                                    color: Colors.deepPurple,
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(2)),
                                  hintText: "Phone number",
                                  focusColor: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Row(
                              children: const [
                                Icon(
                                  FontAwesomeIcons.walking,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Instruction for the Delivery",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Icon(
                                  FontAwesomeIcons.angleDown,
                                  color: Colors.black54,
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: Text(
                                  "The courier will buy out the goods or carry out \n other instruction",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: Text(
                                      "Important Details",
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Icon(
                                      FontAwesomeIcons.angleDown,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      primary: Colors.pink[100],
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                  child: const Text(
                                    "Delete address",
                                    textScaleFactor: 1.2,
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.deepPurple,
                              padding:
                                  const EdgeInsets.only(left: 100, right: 100),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                          icon: const Icon(FontAwesomeIcons.plusCircle),
                          label: const Text(
                            "Add Delivery Location",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          )),
                      const Padding(
                        padding: EdgeInsets.only(top: 15, right: 200),
                        child: Text(
                          "Select Package Type",
                          textScaleFactor: 1.2,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15, right: 270),
                        child: Text(
                          "Document",
                          textScaleFactor: 1.1,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Divider(
                        color: Colors.indigo[100],
                        thickness: 2.0,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 20),
                            child: Container(
                              width: 60,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.deepPurple),
                              child: Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Icon(
                                      FontAwesomeIcons.book,
                                      color: Colors.white,
                                      size: 25.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 6),
                                    child: Text(
                                      "Doc",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 11),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 20),
                            child: Container(
                              width: 60,
                              height: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(top: 17),
                                    child: Icon(FontAwesomeIcons.utensils,
                                        color: Colors.grey),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7),
                                    child: Text(
                                      "Food",
                                      style: TextStyle(fontSize: 11),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 20),
                            child: Container(
                              width: 60,
                              height: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(top: 17),
                                    child: Icon(FontAwesomeIcons.tshirt,
                                        color: Colors.grey),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7),
                                    child: Text(
                                      "Cloth",
                                      style: TextStyle(fontSize: 11),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 20),
                            child: Container(
                              width: 60,
                              height: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(top: 17),
                                    child: Icon(FontAwesomeIcons.shoppingBasket,
                                        color: Colors.grey),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7),
                                    child: Text(
                                      "Groceries",
                                      style: TextStyle(fontSize: 11),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15, right: 220),
                        child: Text(
                          "Your Parcel Value",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 1.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, right: 200),
                        child: Text(
                          "Please enter your parcel value",
                          style: TextStyle(
                              color: Colors.indigo[300],
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10, right: 40),
                        child: Text(
                          "Kindly enter the exact parcel value above. As your parcel is insured \n completely. We make you assure that in case of lost of parcel you \n will get the same compensation amount you have entered above.",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 15, right: 240),
                        child: Text("Other Details",
                            textScaleFactor: 1.2,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 15, left: 20),
                            child: Text("Do you want delivery with bag",
                                textScaleFactor: 1.2,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Switch(
                              value: isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                });
                              },
                              activeTrackColor: Colors.lightGreenAccent,
                              activeColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey[300],
                        thickness: 1.2,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 10, left: 20),
                            child: Text(
                              "Notify recipients by SMS",
                              textScaleFactor: 1.0,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 5, left: 130),
                            child: Switch(
                              value: isSwitch,
                              onChanged: (value) {
                                setState(() {
                                  isSwitch = value;
                                });
                              },
                              activeTrackColor: Colors.lightGreenAccent,
                              activeColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      TextField(
                        onChanged: (value) {
                          setState(() {});
                        },
                        decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 5.0),
                            isDense: true,
                            prefixIcon: const Icon(
                              FontAwesomeIcons.tag,
                              color: Colors.deepPurple,
                              size: 14.0,
                            ),
                            suffixIcon: const Padding(
                              padding: EdgeInsets.only(top: 18),
                              child: Text(
                                "Apply",
                                textScaleFactor: 1.0,
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.indigo[50],
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(2)),
                            hintText: "Promo Code ",
                            focusColor: Colors.grey),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20, right: 220),
                        child: Text(
                          "Payment Mode",
                          textScaleFactor: 1.2,
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15, left: 20),
                            child: Container(
                              width: 60,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.deepPurple),
                              child: Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Icon(
                                      FontAwesomeIcons.moneyCheckAlt,
                                      color: Colors.white,
                                      size: 25.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 6, left: 5),
                                    child: Text(
                                      "Cash",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 11),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, left: 20),
                            child: Container(
                              width: 60,
                              height: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(top: 17),
                                    child: Icon(FontAwesomeIcons.wallet,
                                        color: Colors.grey),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7),
                                    child: Text(
                                      "Wallet",
                                      style: TextStyle(fontSize: 11),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, left: 20),
                            child: Container(
                              width: 60,
                              height: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(top: 17),
                                    child: Icon(FontAwesomeIcons.creditCard,
                                        color: Colors.grey),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7),
                                    child: Text(
                                      "Pay Online",
                                      style: TextStyle(fontSize: 11),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          "Where the payment will occur",
                          textScaleFactor: 1.0,
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
