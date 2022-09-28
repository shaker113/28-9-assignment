import 'package:flutter/material.dart';
import 'package:myapp/screens/homePage.dart';
import 'package:myapp/screens/mainPage.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final inputEmail = TextEditingController();
  final inputPassword = TextEditingController();
  String myEmail = "shaker@gmail.com";
  String myPasword = "12345678";
  bool os = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              height: 50,
              color: Colors.transparent,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      setState(
                        () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return homePage();
                              },
                            ),
                          );
                        },
                      );
                    },
                    icon: Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.white,
                    )),
                Image(
                  image: AssetImage("images/netflix_logo1.png"),
                  width: 80,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Column(
                children: [
                  Divider(
                    height: 50,
                    color: Colors.transparent,
                  ),
                  Container(
                    height: 60,
                    padding:
                        EdgeInsets.only(top: 2, bottom: 2, right: 10, left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white24,
                    ),
                    child: TextField(
                      controller: inputEmail,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: Colors.white),
                      inputFormatters: [],
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          label: Text(
                            "Email or Phone Number",
                            style: TextStyle(color: Colors.white60),
                          )),
                      cursorColor: Colors.white24,
                      cursorHeight: 27,
                    ),
                  ),
                  Divider(
                    height: 15,
                    color: Colors.transparent,
                  ),
                  Container(
                    height: 60,
                    padding:
                        EdgeInsets.only(top: 2, bottom: 2, right: 10, left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white24,
                    ),
                    child: TextField(
                      controller: inputPassword,
                      style: TextStyle(color: Colors.white),
                      inputFormatters: [],
                      decoration: InputDecoration(
                        isDense: true,
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.black54,
                            size: 23,
                          ),
                          onPressed: () {
                            setState(
                              () {
                                os = !os;
                              },
                            );
                          },
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                        label: Text(
                          "Password",
                          style: TextStyle(color: Colors.white60),
                        ),
                      ),
                      cursorColor: Colors.white24,
                      cursorHeight: 27,
                      obscureText: os,
                    ),
                  ),
                  Divider(
                    height: 25,
                    color: Colors.transparent,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        print("$myEmail,$myPasword,$inputEmail,$inputPassword");
                        if (inputEmail.text == myEmail &&
                            inputPassword.text == myPasword) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return mainPage();
                              },
                            ),
                          );
                        } else {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor: Colors.grey.shade900,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                actions: [
                                  Center(
                                    child: Column(
                                      children: [
                                        Text(
                                          textAlign: TextAlign.center,
                                          "There was a problem signing in. Please try again later.",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        ),
                                        Divider(
                                          thickness: 1,
                                          height: 9,
                                          color: Colors.white,
                                        ),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      color:
                                                          Colors.red.shade600),
                                                  borderRadius:
                                                      BorderRadius.circular(7)),
                                              fixedSize: Size(150, 40),
                                              backgroundColor:
                                                  Colors.transparent),
                                          onPressed: () {
                                            setState(
                                              () {
                                                Navigator.pop(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) {
                                                      return loginPage();
                                                    },
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: Text(
                                            "Try Again",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 17,
                                                color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              );
                            },
                          );
                        }
                      });
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(400, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                            side: BorderSide(color: Colors.white24, width: 2)),
                        backgroundColor: Colors.transparent),
                  ),
                  Divider(
                    height: 25,
                    color: Colors.transparent,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return mainPage();
                              },
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      "Need help?",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white70),
                    ),
                  ),
                  Divider(
                    height: 10,
                    color: Colors.transparent,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {},
                    child: Text(
                      "New to Netflix? Sign up now.",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white70),
                    ),
                  ),
                  Divider(
                    height: 25,
                    color: Colors.transparent,
                  ),
                  Text(
                    "Sign in is protexted by Google reCAPTHA to ensure you're not a bot.",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white54,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
