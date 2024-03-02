import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Screens/todo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        canvasColor: Colors.white,///here
      ),
      home: const LandingPage(),
      title: 'Todo List',
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w300
                    ),
                    textAlign: TextAlign.center,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Plan IT",
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            "Your Personal task management\nand planning solution",
            style: TextStyle(
              fontSize: 16,
              color: Color(0xbb000000),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20,),
          Container(
            //padding: const EdgeInsets.only(bottom: 20.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => TodoPage()));
              },
              child: Text(
                "Let's get started",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.white),
              ),

              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFF393939)),
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 55, vertical: 15)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              ),
            ),

          ),
          SizedBox(height: 60,),
        ],
      ),
    );
  }
}






