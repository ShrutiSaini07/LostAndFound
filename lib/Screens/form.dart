import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_cupertino/dropdown_cupertino.dart';

List<String> list = <String>[
  'Ojfekjfene',
  'Twjekvkeo',
  'Thbjfebnjree',
  'Foubvbjr'
];

class FormScreenPage extends StatefulWidget {
  const FormScreenPage({super.key});

  @override
  State<FormScreenPage> createState() => _FormScreenPageState();
}

final Map<String, String> personMap = {
  'Person 1': 'Person 1',
  'Person 2': 'Person 2',
  'Person 3': 'Person 3',
  // Add more person names as needed
};

class _FormScreenPageState extends State<FormScreenPage> {
  final nameController = TextEditingController();
  final desController = TextEditingController();
  final typeController = TextEditingController();

  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor:
              Colors.transparent, // Make the AppBar background transparent
          leading: BackButton(color: Color(0xffffffff)),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff0B69FF), Color(0xff418AFF)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xff0B69FF),
                  Color(0xff418AFF),
                ],
              )),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      "Find",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                          color: Color(0xffffffff)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      "Your Item",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                          color: Color(0xffffffff)),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text(
                          "Item Name *",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xffffffff)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Container(
                          height: 40,
                          width: 333,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: nameController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              onChanged: (value) {
                                setState(() {});
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text(
                          "Description * (150 words)  ",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xffffffff)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Container(
                          height: 105,
                          width: 333,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: desController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              onChanged: (value) {
                                setState(() {});
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                              child: Text(
                                "Type ",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color(0xffffffff)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30.0),
                                child: Stack(children: [
                                  Container(
                                    width: 150,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors
                                              .white), // Add a border to mimic the iOS look
                                      borderRadius: BorderRadius.circular(
                                          8.0), // Optional: Add rounded corners
                                    ),
                                    child: CupertinoButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {
                                        showCupertinoModalPopup(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return SizedBox(
                                              height:
                                                  200, // Set your desired height here
                                              child: CupertinoPicker(
                                                itemExtent: 32.0,
                                                backgroundColor: CupertinoColors.white,
                                                children: personMap.keys
                                                    .map((person) {
                                                  return Text(person);
                                                }).toList(),
                                                onSelectedItemChanged:
                                                    (int index) {
                                                  debugPrint(
                                                      "Selected text is: ${personMap.keys.toList()[index]}");
                                                },
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                "Select Type", // You can customize the text here
                                                style: TextStyle(fontSize: 14.0,color: Color(0xff0B69FF)),
                                              ),
                                            ),
                                            Icon(Icons.beach_access,
                                                size: 20.0,color: Color(0xff0B69FF),),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ])
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Colour ",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xffffffff)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Stack(children: [
                              Container(
                                width: 150,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors
                                          .white), // Add a border to mimic the iOS look
                                  borderRadius: BorderRadius.circular(
                                      8.0), // Optional: Add rounded corners
                                ),
                                child: CupertinoButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {
                                    showCupertinoModalPopup(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return SizedBox(
                                          height:
                                          200, // Set your desired height here
                                          child: CupertinoPicker(
                                            itemExtent: 32.0,
                                            backgroundColor: CupertinoColors.white,
                                            children: personMap.keys
                                                .map((person) {
                                              return Text(person);
                                            }).toList(),
                                            onSelectedItemChanged:
                                                (int index) {
                                              debugPrint(
                                                  "Selected text is: ${personMap.keys.toList()[index]}");
                                            },
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Text(
                                            "Select Colour", // You can customize the text here
                                            style: TextStyle(fontSize: 14.0,color: Color(0xff0B69FF)),
                                          ),
                                        ),
                                        Icon(Icons.beach_access,
                                          size: 20.0,color: Color(0xff0B69FF),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text(
                          "Unique Identifier",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xffffffff)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Container(
                          height: 40,
                          width: 333,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: nameController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              onChanged: (value) {
                                setState(() {});
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text(
                          "Lost  Location ",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xffffffff)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Container(
                          height: 40,
                          width: 333,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: nameController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              onChanged: (value) {
                                setState(() {});
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                              child: Text(
                                "Lost  Date ",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color(0xffffffff)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30.0),
                                child: Stack(children: [
                                  Container(
                                    width: 150,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors
                                              .white), // Add a border to mimic the iOS look
                                      borderRadius: BorderRadius.circular(
                                          8.0), // Optional: Add rounded corners
                                    ),
                                    child: CupertinoButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {
                                        showCupertinoModalPopup(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return SizedBox(
                                              height:
                                              200, // Set your desired height here
                                              child: CupertinoPicker(
                                                itemExtent: 32.0,
                                                backgroundColor: CupertinoColors.white,
                                                children: personMap.keys
                                                    .map((person) {
                                                  return Text(person);
                                                }).toList(),
                                                onSelectedItemChanged:
                                                    (int index) {
                                                  debugPrint(
                                                      "Selected text is: ${personMap.keys.toList()[index]}");
                                                },
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                "Select Date", // You can customize the text here
                                                style: TextStyle(fontSize: 14.0,color: Color(0xff0B69FF)),
                                              ),
                                            ),
                                            Icon(Icons.calendar_month_rounded,
                                              size: 20.0,color: Color(0xff0B69FF),),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ])
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lost  Time ",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xffffffff)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Stack(children: [
                              Container(
                                width: 150,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors
                                          .white), // Add a border to mimic the iOS look
                                  borderRadius: BorderRadius.circular(
                                      8.0), // Optional: Add rounded corners
                                ),
                                child: CupertinoButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {
                                    showCupertinoModalPopup(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return SizedBox(
                                          height:
                                          200, // Set your desired height here
                                          child: CupertinoPicker(
                                            itemExtent: 32.0,
                                            backgroundColor: CupertinoColors.white,
                                            children: personMap.keys
                                                .map((person) {
                                              return Text(person);
                                            }).toList(),
                                            onSelectedItemChanged:
                                                (int index) {
                                              debugPrint(
                                                  "Selected text is: ${personMap.keys.toList()[index]}");
                                            },
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Text(
                                            "Select Time", // You can customize the text here
                                            style: TextStyle(fontSize: 14.0,color: Color(0xff0B69FF)),
                                          ),
                                        ),
                                        Icon(Icons.timer_outlined,
                                          size: 20.0,color: Color(0xff0B69FF),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text(
                          "Image * ",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xffffffff)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Stack(children: [
                          Container(
                            height: 196,
                            width: 333,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: nameController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                                onChanged: (value) {
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(90),
                            child: Center(
                              child: Icon(Icons.image_outlined),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Container(
                      height: 52.0,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Color(0xff000000),
                          borderRadius: BorderRadius.circular(21)),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontFamily: "Poppins",
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
