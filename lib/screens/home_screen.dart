import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffB3CEC9),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(child: Image.asset("assets/vector_1.png")),

              const Text(
                'Take A Breath',
                style: TextStyle(
                  fontFamily: 'MetalsmithRegular',
                  fontSize: 20,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 300,
                child: Text(
                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Text("Take A Breath",
              //     style: GoogleFonts.rubik  (
              //       textStyle: const TextStyle(fontSize: 22, color: Color(0xff1A7F72), fontWeight: FontWeight.bold),
              //     ))
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  categoryitem("assets/meditation.png", true),
                  categoryitem("assets/yoga.png", false),
                  categoryitem("assets/sound.png", false),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    "Meditation",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Yoga  ",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Sound",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    chooseitem(
                        images: "assets/The Peace.png",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                        name: "The Peace",
                        haveBorder: false,
                        times: "10 min"),
                    chooseitem(
                        images: "assets/Stress Relief.png",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                        name: "Stress Relief",
                        haveBorder: false,
                        times: "15 min"),
                    chooseitem(
                        images: "assets/rapper.png",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                        name: "rapper",
                        haveBorder: false,
                        times: "20 min"),
                    chooseitem(
                        images: "assets/golfer.png",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                        name: "golfer",
                        haveBorder: false,
                        times: "25 min"),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  benefits(
                    "Increase Blood Fluid",
                    "assets/Increase Blood Fluid.png",
                  ),
                  benefits(
                    "Relax Mind",
                    "assets/Relax Mind.png",
                  ),
                  benefits(
                    "Straighten Your Mood",
                    "assets/Straighten Your Mood.png",
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryitem(String name, bool haveBorder) {
    return Container(
      width: 85,
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: haveBorder ? const Color(0xff1A7F72) : Colors.white,
      ),
      child: Image.asset(name),
    );
  }

  Widget chooseitem(
      {required String images,
      required String name,
      required String description,
      required bool haveBorder,
      required String times}) {
    return Padding(
      padding: const EdgeInsets.all(13),
      child: Container(
        width: 150,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Colors.white,
          border: haveBorder
              ? Border.all(
                  color: haveBorder ? Colors.blueAccent : Colors.transparent)
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff1A7F72),
              ),
              child: Image.asset(
                images,
              ),
            ),
            Text(
              name,
              style: const TextStyle(
                  color: Color(0xff000000),
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 120,
              child: Text(description,
                  maxLines: 2,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xff000000),
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(times),
                InkWell(
                  child: Image.asset(
                    "assets/button_forword.png",
                  ),
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget benefits(String name, String icons) {
    return Column(
      children: [
        Image.asset(icons),
        SizedBox(
          width: 70,
          child: Text(
            name,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        )
      ],
    );
  }
}
