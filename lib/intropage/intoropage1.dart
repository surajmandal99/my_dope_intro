import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              child: Lottie.network(
                  "https://assets2.lottiefiles.com/packages/lf20_qoqtgkus.json")),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 80,
              width: 220,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.lightBlue,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.yellow,
                        blurRadius: 1,
                        offset: Offset(2, 4),
                        spreadRadius: 2)
                  ]),
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    "Yo Whassup!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                  ),
                )),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: SizedBox(
              child: Icon(
                Icons.back_hand_outlined,
                size: 40,
              ),
            ),
          )
        ],
      ),
    );
  }
}
