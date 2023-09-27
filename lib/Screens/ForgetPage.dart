import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final emailController = TextEditingController();

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
      body: Stack(children: [
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
        Container(
          margin: EdgeInsets.only(top: 220),
          width: double.infinity,
          height: 560,
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
                    "Forget Password",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w800,
                        fontSize: 40,
                        color: Color(0xff468DFF)),
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
                        color: Color(0xff468DFF)),
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
                  height: 40,
                ),
                Center(
                  child: Container(
                    height: 52.0,
                    width: 200,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color(0xff0B69FF),
                          Color(0xff5999FF),
                        ]),
                        borderRadius: BorderRadius.circular(21)),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent),
                      child: Text(
                        'Send',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ]),
        )
      ]),
    );
  }
}
