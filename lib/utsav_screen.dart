import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black,
              alignment: Alignment.topCenter,
              child: const Text(
                "data",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            Container(
              height: height / 3,
              width: double.infinity,
              child: Image.asset(
                "assets/images/Photo Profile.png",
                fit: BoxFit.cover,
              ),
            ),


          ],
        ),
      ),
    );
  }
}