import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Container(
          alignment: Alignment.topCenter,
          child: Lottie.network(
            "https://assets2.lottiefiles.com/packages/lf20_4rq0nvpt.json",
            addRepaintBoundary: true,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: SizedBox(
              child: Icon(
            Icons.developer_mode_rounded,
            size: 40,
          )),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightGreen,
                gradient: const LinearGradient(
                    colors: [Colors.lime, Colors.lightBlueAccent])),
            height: 100,
            width: 300,
            child: const Center(
                child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "I'm Suraj Mandal from Biratnagar-10,Nepal 🚩",
                textAlign: TextAlign.start,
                textScaleFactor: 1.0,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            )),
          ),
        )
      ]),
    ));
  }
}
