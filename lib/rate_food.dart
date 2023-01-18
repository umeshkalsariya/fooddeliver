import 'package:flutter/material.dart';

class RateFoodScreen extends StatefulWidget {
  const RateFoodScreen({Key? key}) : super(key: key);

  @override
  State<RateFoodScreen> createState() => _RateFoodScreenState();
}

class _RateFoodScreenState extends State<RateFoodScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: height / 2.5,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: height / 2.4,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF0D0D0D),
                    Color(0x00000000),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            ListView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(vertical: height / 16, horizontal: width / 14),
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/images/Image.png",
                      height: height / 4,
                    ),
                    SizedBox(height: height / 15),
                    Text(
                      "Thank You!",
                      style: TextStyle(
                        fontSize: text * 32,
                        height: 1,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFFFFFFF),
                      ),
                    ),
                    Text(
                      "Enjoy Your Meal",
                      style: TextStyle(
                        fontSize: text * 32,
                        color: const Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: height / 20),
                    Text(
                      "Please rate your Food",
                      style: TextStyle(
                        fontSize: text * 15,
                        color: const Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: height / 20),
                    Image.asset("assets/images/StarIcon.png"),
                    SizedBox(height: height / 10),
                    Container(
                      height: height / 15,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0x24F4F4F4),
                        borderRadius: BorderRadius.circular(height / 60),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: width / 25),
                          Image.asset("assets/images/editicon.png"),
                          SizedBox(width: width / 25),
                          Text(
                            "Leave feedback",
                            style: TextStyle(
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height / 25),
                    Row(
                      children: [
                        Container(
                          height: height / 15,
                          width: height / 3.5,
                          decoration: BoxDecoration(
                            color: const Color(0xFF53E88B),
                            borderRadius: BorderRadius.circular(height / 60),
                          ),
                          alignment: Alignment.center,
                          child: const Text("Submit",
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ),
                        SizedBox(width: width / 18),
                        Container(
                          height: height / 15,
                          width: height / 9.5,
                          decoration: BoxDecoration(
                            color: const Color(0x24F4F4F4),
                            borderRadius: BorderRadius.circular(height / 60),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "skip",
                            style: TextStyle(
                              color: Color(0xFF53E88B),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}