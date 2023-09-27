import 'package:flutter/material.dart';
import 'dart:math';

import 'package:lost_and_found/Screens/home.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xffFF2D2D),
                  Color(0xffFF6565),
                ],
              ),
            ),
          ),
          SafeArea(
            child:
            Container(
              width: 200,
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    child: Container(
                      height: 200,
                      child: DrawerHeader(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/Images/profile.jpg'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Shruti Saini",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "21BCS9026",
                            style:
                                TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          SizedBox(
                            height: 19,
                          ),
                          Container(
                            width: 200,
                            height: 1,
                            color: Colors.white,
                          ),

                        ],
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 500,
                  ),
                  Container(
                    height: 33.0,
                    width: 117,
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(10)),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent),
                      child: Text(
                        'LOG OUT',
                        style: TextStyle(
                            color: Color(0xffFF6565),
                            fontFamily: "Poppins",
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ),
          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: value),
              duration: Duration(milliseconds: 300),
              curve: Curves.easeIn,
              builder: (_, double val, __) {
                return (Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..setEntry(
                        0,
                        3,
                        200 *
                            val) // this line allows us to translate the screen
                    ..rotateY((pi / 6) * val),
                  child: HomePageScreen(),
                ));
              }),
          GestureDetector(
            onTap: () {
              setState(() {
                value == 0 ? value = 1 : value = 0;
              });
            },

            //onHorizontalDragUpdate: (e){
            //  if(e.delta.dx>0){
            //    setState(() {
            //      value =1;
            //    });
            //  }
            //  else{
            //    setState(() {
            //      value = 0;
            //    });
            //  }
            //}
          )
        ],
      ),
    );
  }
}
