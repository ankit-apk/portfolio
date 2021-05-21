import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio/controller/controller.dart';
import 'package:portfolio/view/myservice.dart';

import 'aboutus.dart';
import 'home.dart';

class Contact extends StatelessWidget {
  WebPageController p = Get.put(WebPageController());
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CircleAvatar(
                  radius: 120,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/ankit.png.jpg',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
              Text(
                'Ankit Srivastava \n ankitsrivastava858@gmail.com',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0xfffca61f),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      p.launchPlay();
                    },
                    child: Container(
                      height: 100,
                      width: 200,
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/googleplay.png',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      p.launchGit();
                    },
                    child: Container(
                      height: 100,
                      width: 200,
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/github.png',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      p.launchWhatsapp();
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Icon(
                        FontAwesomeIcons.whatsappSquare,
                        size: 80,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      p.launchLinkedin();
                    },
                    child: Container(
                      height: 100,
                      width: 200,
                      child: Icon(
                        FontAwesomeIcons.linkedin,
                        size: 80,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
