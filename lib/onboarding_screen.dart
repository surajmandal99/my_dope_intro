import 'package:flutter/material.dart';
import 'package:my_dope_intro/intropage/intoropage1.dart';
import 'package:my_dope_intro/intropage/intropage2.dart';
import 'package:my_dope_intro/intropage/intropage3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'home_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //controller is used to keep the track of the page in which we're
  final PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        //page view
        PageView(
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          controller: _controller,
          children: const [
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
          ],
        ),

        //dot indicator
        Container(
            alignment: const Alignment(0, 0.85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //skip

                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SmoothPageIndicator(controller: _controller, count: 3),

                //right side next or done
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const HomePage();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          "Done",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInCirc);
                        },
                        child: const Text(
                          "Next",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
              ],
            )),
      ],
    ));
  }
}
