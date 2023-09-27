import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({super.key});

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFffffff),
        leading: BackButton(color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert_outlined,
                  color: Colors.black,
                  size: 32,
                )),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            color: Color(0xffffffff),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 330,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Color(0xffF5F5F5),
                       // boxShadow: [
                        //  BoxShadow(
                         //   color: Colors.grey.withOpacity(0.11),
                          //  spreadRadius: 5,
                          //  blurRadius: 5,
                           // offset: Offset(2, 2),
                          //),
                        //],
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: InkWell(
                                onTap: () {},
                                child: Icon(CupertinoIcons.search)),
                          ),
                          Expanded(
                            child: TextField(
                              controller: searchController,
                              decoration: InputDecoration(
                                hintText: "Search Request ....",
                                border: InputBorder.none,
                              ),
                              onChanged: (value) {
                                setState(() {});
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text("Requested Items",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Colors.black,
                    )
                ),
                SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      Stack(children: [
                        Container(
                          height: 60,
                          width: 340,
                          decoration: BoxDecoration(
                            color: Color(0xffF7FCEB),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Container(
                                  height: 34,
                                  width: 6,
                                  decoration: BoxDecoration(
                                    color: Color(0xffBDE363),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(50.0),
                                      topRight: Radius.circular(50.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all( 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Item Name", style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.black,
                                    )),
                                    Text("22 September 2023", style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Color(0xffBDE363),
                                    )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 145,
                              ),
                              SvgPicture.asset(
                                'assets/icons/checkBox.svg',
                                height: 30,
                                color: Color(0xffBDE363),
                              ),
                            ],
                          ),
                        ),
                      ]),
                      SizedBox(height: 15,),

                      Stack(children: [
                        Container(
                          height: 60,
                          width: 340,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFAFB),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Container(
                                  height: 34,
                                  width: 6,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFF6380),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(50.0),
                                      topRight: Radius.circular(50.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all( 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Item Name", style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.black,
                                    )),
                                    Text("22 September 2023", style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Color(0xffFF6380),
                                    )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 145,
                              ),
                              SvgPicture.asset(
                                'assets/icons/checkBox.svg',
                                height: 30,
                                color: Color(0xffFF6380),
                              ),
                            ],
                          ),
                        ),
                      ]),
                      SizedBox(height: 15,),

                      Stack(children: [
                        Container(
                          height: 60,
                          width: 340,
                          decoration: BoxDecoration(
                            color: Color(0xffFFF3E6),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Container(
                                  height: 34,
                                  width: 6,
                                  decoration: BoxDecoration(
                                    color: Color(0xffF1B167),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(50.0),
                                      topRight: Radius.circular(50.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all( 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Item Name", style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.black,
                                    )),
                                    Text("22 September 2023", style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Color(0xffF1B167),
                                    )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 145,
                              ),
                              SvgPicture.asset(
                                'assets/icons/checkBox.svg',
                                height: 30,
                                color: Color(0xffF1B167),
                              ),
                            ],
                          ),
                        ),
                      ]),
                      SizedBox(height: 15,),

                      Stack(children: [
                        Container(
                          height: 60,
                          width: 340,
                          decoration: BoxDecoration(
                            color: Color(0xffF1F6FF),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Container(
                                  height: 34,
                                  width: 6,
                                  decoration: BoxDecoration(
                                    color: Color(0xff468DFF),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(50.0),
                                      topRight: Radius.circular(50.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all( 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Item Name", style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.black,
                                    )),
                                    Text("22 September 2023", style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Color(0xff468DFF),
                                    )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 145,
                              ),
                              SvgPicture.asset(
                                'assets/icons/checkBox.svg',
                                height: 30,
                                color: Color(0xff468DFF),
                              ),
                            ],
                          ),
                        ),
                      ]),
                      SizedBox(height: 15,),

                      Stack(children: [
                        Container(
                          height: 60,
                          width: 340,
                          decoration: BoxDecoration(
                            color: Color(0xffF9E9E7),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Container(
                                  height: 34,
                                  width: 6,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFD9C81),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(50.0),
                                      topRight: Radius.circular(50.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all( 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Item Name", style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.black,
                                    )),
                                    Text("22 September 2023", style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Color(0xffFD9C81),
                                    )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 145,
                              ),
                              SvgPicture.asset(
                                'assets/icons/checkBox.svg',
                                height: 30,
                                color: Color(0xffFD9C81),
                              ),
                            ],
                          ),
                        ),
                      ]),
                      SizedBox(height: 15,),

                      Stack(children: [
                        Container(
                          height: 60,
                          width: 340,
                          decoration: BoxDecoration(
                            color: Color(0xffF4F3F9),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Container(
                                  height: 34,
                                  width: 6,
                                  decoration: BoxDecoration(
                                    color: Color(0xffB9AAFF),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(50.0),
                                      topRight: Radius.circular(50.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all( 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Item Name", style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.black,
                                    )),
                                    Text("22 September 2023", style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Color(0xffB9AAFF),
                                    )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 145,
                              ),
                              SvgPicture.asset(
                                'assets/icons/checkBox.svg',
                                height: 30,
                                color: Color(0xffB9AAFF),
                              ),
                            ],
                          ),
                        ),
                      ]),
                      SizedBox(height: 15,),

                      Stack(children: [
                        Container(
                          height: 60,
                          width: 340,
                          decoration: BoxDecoration(
                            color: Color(0xffE7F8F2),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Container(
                                  height: 34,
                                  width: 6,
                                  decoration: BoxDecoration(
                                    color: Color(0xffB6E0D0),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(50.0),
                                      topRight: Radius.circular(50.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all( 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Item Name", style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.black,
                                    )),
                                    Text("22 September 2023", style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Color(0xffB6E0D0),
                                    )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 145,
                              ),
                              SvgPicture.asset(
                                'assets/icons/checkBox.svg',
                                height: 30,
                                color: Color(0xffB6E0D0),
                              ),
                            ],
                          ),
                        ),
                      ]),






                      SizedBox(height: 15,),
                      Stack(children: [
                        Container(
                          height: 60,
                          width: 340,
                          decoration: BoxDecoration(
                            color: Color(0xffFFF3E6),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Container(
                                  height: 34,
                                  width: 6,
                                  decoration: BoxDecoration(
                                    color: Color(0xffF1B167),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(50.0),
                                      topRight: Radius.circular(50.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all( 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Item Name", style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.black,
                                    )),
                                    Text("22 September 2023", style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Color(0xffF1B167),
                                    )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 145,
                              ),
                              SvgPicture.asset(
                                'assets/icons/checkBox.svg',
                                height: 30,
                                color: Color(0xffF1B167),
                              ),
                            ],
                          ),
                        ),
                      ]),
                      SizedBox(height: 15,),

                      Stack(children: [
                        Container(
                          height: 60,
                          width: 340,
                          decoration: BoxDecoration(
                            color: Color(0xffF1F6FF),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Container(
                                  height: 34,
                                  width: 6,
                                  decoration: BoxDecoration(
                                    color: Color(0xff468DFF),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(50.0),
                                      topRight: Radius.circular(50.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all( 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Item Name", style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.black,
                                    )),
                                    Text("22 September 2023", style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Color(0xff468DFF),
                                    )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 145,
                              ),
                              SvgPicture.asset(
                                'assets/icons/checkBox.svg',
                                height: 30,
                                color: Color(0xff468DFF),
                              ),
                            ],
                          ),
                        ),
                      ]),
                      SizedBox(height: 15,),

                      Stack(children: [
                        Container(
                          height: 60,
                          width: 340,
                          decoration: BoxDecoration(
                            color: Color(0xffF9E9E7),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Container(
                                  height: 34,
                                  width: 6,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFD9C81),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(50.0),
                                      topRight: Radius.circular(50.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all( 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Item Name", style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.black,
                                    )),
                                    Text("22 September 2023", style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Color(0xffFD9C81),
                                    )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 145,
                              ),
                              SvgPicture.asset(
                                'assets/icons/checkBox.svg',
                                height: 30,
                                color: Color(0xffFD9C81),
                              ),
                            ],
                          ),
                        ),
                      ]),
                      SizedBox(height: 15,),

                      Stack(children: [
                        Container(
                          height: 60,
                          width: 340,
                          decoration: BoxDecoration(
                            color: Color(0xffF4F3F9),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Container(
                                  height: 34,
                                  width: 6,
                                  decoration: BoxDecoration(
                                    color: Color(0xffB9AAFF),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(50.0),
                                      topRight: Radius.circular(50.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all( 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Item Name", style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.black,
                                    )),
                                    Text("22 September 2023", style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Color(0xffB9AAFF),
                                    )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 145,
                              ),
                              SvgPicture.asset(
                                'assets/icons/checkBox.svg',
                                height: 30,
                                color: Color(0xffB9AAFF),
                              ),
                            ],
                          ),
                        ),
                      ]),
                      SizedBox(height: 15,),
                    ]
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
