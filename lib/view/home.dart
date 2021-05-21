import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/view/aboutus.dart';
import 'package:portfolio/view/contact.dart';
import 'package:portfolio/view/myservice.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(Home());
                    },
                    child: Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(AboutUs());
                    },
                    child: Text(
                      "About Us",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(MyService());
                    },
                    child: Text(
                      "Services",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(Contact());
                    },
                    child: Text(
                      "Contact Me",
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                  onTap: () {
                    Get.to(Contact());
                  },
                  child: Image.asset('assets/bg.png'))
            ],
          ),
        ),
      ),
    );
  }
}
