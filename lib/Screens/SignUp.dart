import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFffffff),
        leading: BackButton(color: Color(0xff418AFF)),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: double.infinity,
            height: 740,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xff0B69FF),
                  Color(0xff418AFF),
                ],
              ),
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
                    "Sign Up ",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w800,
                        fontSize: 45,
                        color: Color(0xffffffff)),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    "Name",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xffffffff)),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    height: 60,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Color(0xffE7F0FF),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(
                            CupertinoIcons.mail,
                            color: Color(0xff468DFF),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            controller: nameController,
                            decoration: InputDecoration(
                              hintText: "Enter your name ",
                              hintStyle: TextStyle(
                                fontFamily: "Poppins",
                                color: Color(
                                    0xff468DFF), // Change this color to your desired hint text color
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
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    "CU Mail",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xffffffff)),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    height: 60,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Color(0xffE7F0FF),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(
                            CupertinoIcons.mail,
                            color: Color(0xff468DFF),
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
                                    0xff468DFF), // Change this color to your desired hint text color
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
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    "Password",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xffffffff)),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    height: 60,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Color(0xffE7F0FF),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(
                            CupertinoIcons.lock,
                            color: Color(0xff468DFF),
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
                                    0xff468DFF), // Change this color to your desired hint text color
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
                Center(
                  child:
                  Container(
                    height: 52.0,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(21)),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Color(0xff468DFF),
                            fontFamily: "Poppins",
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Center(
                  child: Text(
                    "Already have an account ?  Sign in",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        color: Color(0xffffffff)),
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
