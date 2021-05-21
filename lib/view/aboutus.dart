import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/view/contact.dart';
import 'package:portfolio/view/home.dart';
import 'package:portfolio/view/myservice.dart';

class AboutUs extends StatelessWidget {
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
                      Get.offAll(Home());
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
              Image.asset('assets/aboutbg.png'),
            ],
          ),
        ),
      ),
    );
  }
}
