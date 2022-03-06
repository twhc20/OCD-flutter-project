import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showQuote = false;

  @override
  Widget build(BuildContext context) {

    // widget for quote of the day
    Widget quote = GestureDetector(
      onTap: (){
        setState(() {
          _showQuote = !_showQuote;
        });
      },
      child: Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _showQuote ?
                <Widget>[
                  const Text(
                    "Recovery takes time, don't get discouraged.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 5,),
                  const Icon(Icons.favorite),
                ]
                    :
                <Widget>[
                  const Text(
                    "Tap to Reveal",
                    style: TextStyle(fontSize: 20),
                  ),
                  const Text(
                    "The Quote of the Day",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.teal,
                    ),
                  ),
                ]
            ),
          )
    );


    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Welcome",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(height: 20,),
                const Text(
                  "Please take your time and explore the various modules our "
                      "app has to offer to assist you in your journey to a "
                      "healthier life.",
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 20,),
                quote,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

