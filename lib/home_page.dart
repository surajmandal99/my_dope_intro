import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "About Me",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Lottie.network(
              "https://assets10.lottiefiles.com/private_files/lf30_kBx3K1.json",
              addRepaintBoundary: true,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
                child: Icon(
              Icons.android_rounded,
              color: Colors.black45,
              size: 100,
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.redAccent,
                      blurRadius: 2,
                      blurStyle: BlurStyle.normal,
                      spreadRadius: 3,
                      offset: Offset(2, 3),
                    ),
                  ]),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  " Hi I'm Suraj Mandal",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 31,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.greenAccent,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.blue,
                        blurRadius: 2,
                        offset: Offset(2, 3),
                        spreadRadius: 3,
                        blurStyle: BlurStyle.normal),
                  ]),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Flutter Developer 👨‍💻",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              child: Icon(
                Icons.code_outlined,
                size: 50,
              ),
            ),
          )
        ],
      ),
    );
  }
}
