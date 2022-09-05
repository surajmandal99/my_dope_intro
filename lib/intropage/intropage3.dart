import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(children: [
        Container(
          alignment: Alignment.topCenter,
          child: Lottie.network(
            "https://assets4.lottiefiles.com/packages/lf20_tno6cg2w.json",
            addRepaintBoundary: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightGreen,
                gradient: const LinearGradient(
                    colors: [Colors.lime, Colors.lightBlueAccent])),
            child: const Center(
                child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Currently I'm a 3rd year Computer Science  & Engineering Student </",
                textAlign: TextAlign.start,
                textScaleFactor: 1.0,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightGreen,
                gradient: const LinearGradient(
                    colors: [Colors.lime, Colors.lightBlueAccent])),
            child: const Center(
                child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "I love to expend most of the time on my projects which helps me to level up my learning process 💻 ",
                textAlign: TextAlign.start,
                textScaleFactor: 1.0,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            )),
          ),
        ),
      ])),
    );
  }
}
