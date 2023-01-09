import 'package:flutter/material.dart';
import 'package:flutter_animate/animate.dart';
import 'package:flutter_animate/effects/effects.dart';
import 'package:flutter_animate/extensions/extensions.dart';
import 'package:gapulo/page/login/register_page.dart';
import 'package:gapulo/utils/colors.dart';
import 'package:gapulo/widget/base/animation/on_hover_button.dart';
import 'package:gapulo/widget/base/button/button_base.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widget/custom_appbar.dart';
import 'package:gapulo/widget/base/ext_text.dart';

import '../home/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var screenWidth = Get.width / 1536;
  var screenHeight = Get.height / 763;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        color: const Color(0xff1B1919),
      ),
      Positioned(
        bottom: 0,
        right: 80,
        child: Image.asset("assets/images/img_bg_login.png"),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 80, vertical: screenWidth * 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Gastronomi Lombok").orelega60s().white().animate()
              .fadeIn(delay: 300.ms, duration: 500.ms)
              .then() // sets own delay to 800ms (300+500)
              .slide(duration: 400.ms), // inherits the 800ms delay
            SizedBox(
              height: screenHeight * 20,
            ),
            const Text("Hi there!").orelega50s().white().animate()
              .fadeIn(delay: 300.ms, duration: 500.ms)
              .then() // sets own delay to 800ms (300+500)
              .slide(duration: 400.ms), // inherits the 800ms delay
  
            SizedBox(
              height: screenHeight * 10,
            ),
            const Text("Have we meet Before ?").orelega25s().white().animate()
              .fadeIn(delay: 300.ms, duration: 500.ms)
              .then() // sets own delay to 800ms (300+500)
              .slide(duration: 400.ms), // inherits the 800ms delay,
            SizedBox(
              height: screenHeight * 20,
            ),
            const Text("Email").orelega20s().white().animate()
              .fadeIn(delay: 300.ms, duration: 500.ms)
              .then() // sets own delay to 800ms (300+500)
              .slide(duration: 400.ms), // inherits the 800ms delay,
            SizedBox(
              height: screenHeight * 10,
            ),
            SizedBox(
              width: screenWidth * 471,
              height: screenHeight * 60,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(fontSize: 15, color: Colors.white),
                  counterText: '0 characters',
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 3)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 3)),
                  disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 3)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 3),
                  ),
                ),
              ),
            ),
            const Text("Password").orelega20s().white().animate()
              .fadeIn(delay: 300.ms, duration: 500.ms)
              .then() // sets own delay to 800ms (300+500)
              .slide(duration: 400.ms), // inherits the 800ms delay,
            SizedBox(
              height: screenHeight * 10,
            ),
            SizedBox(
              width: screenWidth * 471,
              height: screenHeight * 60,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(fontSize: 15, color: Colors.white),
                  counterText: '0 characters',
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 3)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 3)),
                  disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 3)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 3),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 10),
            OnHoverButton(
              child: BaseButton(
                width: screenWidth * 471,
                height: screenHeight * 50,
                color: OPrimaryColor,
                outlineRadius: 30,
                ontap: () {
                  Get.to(const HomePage());
                },
                text: "Login",
              ),
            ),
            SizedBox(height: screenHeight * 20),
            SizedBox(
              width: screenWidth * 471,
              child: Row(
                children: [
                  // Divider(),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(border: Border(top: BorderSide(color: Colors.white, width: 1))),
                    ),
                  ),
                  const Text("OR").nunito20s().white(),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(border: Border(top: BorderSide(color: Colors.white, width: 1))),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 20),
            OnHoverButton(
              child: BaseButton(
                width: screenWidth * 471,
                height: screenHeight * 50,
                color: Colors.transparent,
                outlineRadius: 30,
                outlineColor: Colors.white,
                image: "assets/images/img_google.png",
                ontap: () {},
                text: "Login with Google",
              ),
            ),
            SizedBox(height: screenHeight * 20),
            OnHoverButton(
              child: const Text(
                "Forgot my password",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ).nunito20b().white().animate()
              .fadeIn(delay: 300.ms, duration: 500.ms)
              .then() // sets own delay to 800ms (300+500)
              .slide(duration: 400.ms), // inherits the 800ms delay,
            ),
            SizedBox(height: screenHeight * 20),
            OnHoverButton(
              child: GestureDetector(
                onTap: () {
                  Get.to(const RegisterPage());
                },
                child: RichText(
                  text: TextSpan(
                    text: 'Don have an account ? ',
                    style: GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Sign Up',
                        style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    ]));
  }
}
