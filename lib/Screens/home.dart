import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lost_and_found/Screens/navbar.dart';
import 'package:lottie/lottie.dart';

List<IconData> listOfIcons = [
  Icons.home_rounded,
  Icons.favorite_rounded,

];

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  var currentIndex = 0;
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFffffff),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> NavBarScreen()));

            },
            child: SvgPicture.asset(
              'assets/icons/hamburgerIcon.svg',
              height: 20,
              color: Color(0xff000000),
            ),
          )
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
                onPressed: () {

                },
                icon: Icon(
                  Icons.more_vert_outlined,
                  color: Colors.black,
                  size: 32,
                )),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(25),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 80),
          height: size.width * .155,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xffFF2D2D),
                Color(0xffFF6565),
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(.1),
                blurRadius: 30,
                offset: Offset(0, 1),
              ),
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: size.width * .024),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                setState(
                      () {
                    currentIndex = index;
                  },
                );
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 1500),
                    curve: Curves.fastLinearToSlowEaseIn,
                    margin: EdgeInsets.only(
                      bottom: index == currentIndex ? 0 : size.width * .029,
                      right: size.width * .0422,
                      left: size.width * .0422,
                    ),
                    width: size.width * .128,
                    height: index == currentIndex ? size.width * .014 : 0,
                    decoration: BoxDecoration(
                      color:
                      Colors.white,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(10),
                      ),
                    ),
                  ),
                  Icon(
                    listOfIcons[index],
                    size: size.width * .076,
                    color: index == currentIndex
                        ? Colors.white
                        : Colors.white,
                  ),
                  SizedBox(height: size.width * .03),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Stack(

        children: [
          Container(
            color: Color(0xFFffffff),
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
                      width: 270,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Color(0xffF5F5F5),
                        //boxShadow: [
                        //BoxShadow(
                        //  color: Colors.grey.withOpacity(.11),
                        // spreadRadius: 5,
                        // blurRadius: 5,
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
                                hintText: "Search any city name....",
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
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: SvgPicture.asset(
                          'assets/icons/filter.svg',
                          height: 40,
                          color: Colors.black,
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Color(0xffF5F5F5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                12), // Change the border radius
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Items",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins",
                                fontSize: 26,
                                height: 1.2),
                          ),
                          Text(
                            "10 Results",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins",
                                fontSize: 28,
                                height: 1.2),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 139,
                      ),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffCF1202).withOpacity(.2),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(2, 2),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/add.svg',
                          height: 50,
                          color: Color(0xfff83d3d),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      Stack(children: [
                        Container(
                          height: 196,
                          width: 340,
                          decoration: BoxDecoration(
                            color: Color(0xffFF6380),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 0.0),
                                child: Container(
                                  height: 138,
                                  width: 8,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFCDD6),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(50.0),
                                      topRight: Radius.circular(50.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Stack(children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 30),
                                      Text("Iphone 15",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w600,
                                            fontSize: 24,
                                            color: Colors.black,
                                          )),
                                      SizedBox(height: 5),
                                      Text("Admin Name ",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            color: Color(0xffFF6380),
                                          )),
                                      SizedBox(height: 25),
                                      Text("B3 ",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 28,
                                            color: Color(0xff000000),
                                          )),
                                      Text("316 ",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13,
                                            color: Color(0xffFF6380),
                                          )),
                                    ],
                                  ),
                                ]),
                              ),
                              Expanded(
                                // Wrap the Lottie.asset widget with Expanded
                                child: Lottie.asset("assets/Lottie/login.json",
                                    height: 150, width: 150, repeat: true),
                              ),
                            ],
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 15,
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
