import 'package:flutter/material.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.cast),
        backgroundColor: Colors.grey.shade800,
      ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            setState(() {
              Navigator.popUntil(
                  context, ModalRoute.withName(Navigator.defaultRouteName));
            });
          },
          icon: Image(image: AssetImage("images/netflix_logo0.png")),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "TV shows",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.white70),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Movies",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.white70),
                )),
            TextButton(
              onPressed: () {},
              child: Text(
                "My List",
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.white70),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        height: 400,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/sintel.jpg"), fit: BoxFit.cover)),
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}
