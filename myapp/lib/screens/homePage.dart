import 'package:flutter/material.dart';
import 'package:myapp/screens/loginscreen.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/Netflix_Background.jpg"),
                fit: BoxFit.fitHeight),
            gradient: LinearGradient(
                colors: [Colors.black54, Colors.transparent, Colors.black54],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
            child: Padding(
              padding:
                  EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 15),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          image: AssetImage("images/netflix_logo1.png"),
                          width: 80,
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Help",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Privacy",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Divider(
                      height: 400,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "Trying to join Netflix?",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 46, right: 46, top: 10, bottom: 100),
                      child: Text(
                        textAlign: TextAlign.center,
                        "You can't sign up for Netflix in the app. We know it's a hassle. After you're a member, you can start watching in this app.",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return loginPage();
                            },
                          ));
                        });
                      },
                      child: Text("SIGN IN"),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(400, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          backgroundColor: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
