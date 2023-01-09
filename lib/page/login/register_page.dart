import 'package:flutter/material.dart';
import 'package:gapulo/page/login/login_page.dart';
import 'package:gapulo/utils/colors.dart';
import 'package:gapulo/widget/base/animation/on_hover_button.dart';
import 'package:gapulo/widget/base/button/button_base.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widget/custom_appbar.dart';
import 'package:gapulo/widget/base/ext_text.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
            const Text("Gastronomi Lombok").orelega60s().white(),
            SizedBox(
              height: screenHeight * 20,
            ),
            const Text("Hi there!").orelega50s().white(),
            SizedBox(
              height: screenHeight * 10,
            ),
            const Text("Get started with your free account today.").orelega25s().white(),
            SizedBox(
              height: screenHeight * 20,
            ),
            const Text("Work Email").orelega20s().white(),
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
            const Text("Password").orelega20s().white(),
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
                ontap: () {},
                text: "Sign Up",
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
                text: "Sign Up with Google",
              ),
            ),
            SizedBox(height: screenHeight * 20),
            OnHoverButton(
              child: GestureDetector(
                onTap: () {
                  Get.to(const LoginPage());
                },
                child: RichText(
                  text: TextSpan(
                    text: 'Don have an account ? ',
                    style: GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Sign In',
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
            SizedBox(height: screenHeight * 20),
            OnHoverButton(
              child: GestureDetector(
                onTap: () {
                  // Get.to(const LoginPage());
                },
                child: RichText(
                  text: TextSpan(
                    text: 'By signing up, I agree to Gapulo ',
                    style: GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'term & conditioins',
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
