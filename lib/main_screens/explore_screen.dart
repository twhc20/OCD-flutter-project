import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  // function to create dashboard cards
  Card makeCard (String title, String img, int index){
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
              colors: [Colors.teal, Colors.tealAccent],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.white10,
              blurRadius: 3,
              offset: Offset(2,2),
            ),
          ],
        ),
        child: InkWell(
          onTap: (){
            if (index == 0){
              //1.item
            }
            if (index == 1){
              //2.item
            }
            if (index == 2){
              //3.item
            }
            if (index == 3){
              //4.item
            }
            if (index == 4){
              //5.item
            }
            if (index == 5){
              //6.item
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: [
              const SizedBox(height: 50),
              Center(
                child: Image.asset(
                  img,
                  height: 50,
                  width: 50,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 19,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "Explore",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Items:",
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(2),
              children: [
                makeCard("Calendar", "assets/images/calendar.png", 0),
                makeCard("Pill Reminder", "assets/images/pill.png", 1),
                makeCard("Thought Diary", "assets/images/thought_diary.png", 2),
                makeCard("Session Recaps", "assets/images/recap.png", 3),
                makeCard("Mood Tracker", "assets/images/mood.png", 4),
                makeCard("Export Data", "assets/images/export.png", 5),
              ],
            ),
          ),
        ],
      ),
    );
    // return Scaffold(
    //   body: Center(
    //     child: GridView.count(
    //       padding: const EdgeInsets.all(20),
    //       mainAxisSpacing: 5,
    //       crossAxisSpacing: 5,
    //       crossAxisCount: 3,
    //       children: <Widget>[
    //         Container(
    //           decoration: BoxDecoration(
    //             border: Border.all(),
    //             borderRadius: const BorderRadius.all(Radius.circular(5)),
    //             color: Colors.teal[50],
    //           ),
    //           padding: const EdgeInsets.all(10),
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: const <Widget>[
    //               Icon(Icons.bolt),
    //               Text("Quick Access",
    //               textAlign: TextAlign.center,),
    //             ],
    //           ),
    //         ),
    //         Container(
    //           decoration: BoxDecoration(
    //             border: Border.all(),
    //             borderRadius: const BorderRadius.all(Radius.circular(5)),
    //             color: Colors.teal[50],
    //           ),
    //           padding: const EdgeInsets.all(10),
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: const <Widget>[
    //               Icon(Icons.create),
    //               Text("Thought Diary",
    //                 textAlign: TextAlign.center,),
    //             ],
    //           ),
    //         ),
    //         Container(
    //           decoration: BoxDecoration(
    //             border: Border.all(),
    //             borderRadius: const BorderRadius.all(Radius.circular(5)),
    //             color: Colors.teal[50],
    //           ),
    //           padding: const EdgeInsets.all(10),
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: const <Widget>[
    //               Icon(Icons.play_arrow),
    //               Text("Session Recaps",
    //                 textAlign: TextAlign.center,),
    //             ],
    //           ),
    //         ),
    //         Container(
    //           decoration: BoxDecoration(
    //             border: Border.all(),
    //             borderRadius: const BorderRadius.all(Radius.circular(5)),
    //             color: Colors.teal[50],
    //           ),
    //           padding: const EdgeInsets.all(10),
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: const <Widget>[
    //               Icon(Icons.share),
    //               Text("Export Data",
    //                 textAlign: TextAlign.center,),
    //             ],
    //           ),
    //         ),
    //         Container(
    //           decoration: BoxDecoration(
    //             border: Border.all(),
    //             borderRadius: const BorderRadius.all(Radius.circular(5)),
    //             color: Colors.teal[50],
    //           ),
    //           padding: const EdgeInsets.all(10),
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: const <Widget>[
    //               Icon(Icons.calendar_today_rounded),
    //               Text("Calendar",
    //                 textAlign: TextAlign.center,),
    //             ],
    //           ),
    //         ),
    //         Container(
    //           decoration: BoxDecoration(
    //             border: Border.all(),
    //             borderRadius: const BorderRadius.all(Radius.circular(5)),
    //             color: Colors.teal[50],
    //           ),
    //           padding: const EdgeInsets.all(10),
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: const <Widget>[
    //               Icon(Icons.timer),
    //               Text("Quick Relief Methods",
    //                 textAlign: TextAlign.center,),
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
