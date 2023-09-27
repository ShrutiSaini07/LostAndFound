import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
          Container(
              margin: EdgeInsets.only(top: 200),
              width: double.infinity,
              height: 650,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      "Log In ",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w800,
                          fontSize: 45,
                          color: Color(0xff000000)),
                    ),
                  ),

                  SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      "CU Mail",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xff000000)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: 60,
                      width: 340,
                      decoration: BoxDecoration(
                        color: Color(0xfffce5e4),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Icon(
                              CupertinoIcons.mail,
                              color: Color(0xffFF6565),
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                hintText: "Enter CU Mail ",
                                hintStyle: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Color(
                                      0xffFF6565), // Change this color to your desired hint text color
                                ),
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
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      "Password",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xff000000)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: 60,
                      width: 340,
                      decoration: BoxDecoration(
                        color: Color(0xfffce5e4),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Icon(
                              CupertinoIcons.lock,
                              color: Color(0xffFF6565),
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                hintText: "Enter Password ",
                                hintStyle: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Color(
                                      0xffFF6565), // Change this color to your desired hint text color
                                ),
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
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  //Padding(
                  //  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  //  child: ElevatedButton(
                  //    onPressed: () {},
                  //    child: Text("Log In",
                  //        style: TextStyle(
                  //          fontSize: 16,
                  //          color: Color(0xffffffff),
                  //        )),
                  //
                  //    style: ElevatedButton.styleFrom(
                  //      elevation: 0,
                  //      shape: RoundedRectangleBorder(
                  //        borderRadius: BorderRadius.circular(20.0),),

                  //    ),
                  //  ),
                  //)
                  Center(
                    child: Container(
                      height: 52.0,
                      width: 200,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color(0xffFF2D2D),
                              Color(0xffFF6565),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(21)),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        child: Text(
                          'Log In',
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Center(
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Color(0xff000000)),
                    ),
                  ),

                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Text(
                      "Don’t have an account ?  Sign up",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: Color(0xffFF6565)),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
