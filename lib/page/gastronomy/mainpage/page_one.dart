import 'package:flutter/material.dart';
import 'package:flutter_animate/animate.dart';
import 'package:flutter_animate/effects/effects.dart';
import 'package:flutter_animate/extensions/num_duration_extensions.dart';
import 'package:gapulo/widget/base/animation/on_hover_button.dart';
import 'package:gapulo/widget/base/ext_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';
import '../../../widget/base/button/button_base.dart';
import '../listpage/gastronomy_list_page.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  var screenWidth = Get.width / 1536;
  var screenHeight = Get.height / 753;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset("assets/images/img_moon.png"),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset("assets/images/img_ayam2.png"),
          ],
        ),
        Image.asset("assets/images/img_bg_list.png"),
        Column(
          children: [
            SizedBox(height: Get.height * 0.196),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenWidth*633,
                    height: screenHeight*320,
                    child: RichText(
                      text: TextSpan(
                        text: 'Discover  ',
                        style: GoogleFonts.orelegaOne(fontSize: 75, fontWeight: FontWeight.w400, color: ONetralBlack),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Extraordinary ',
                            style: GoogleFonts.orelegaOne(fontSize: 75, fontWeight: FontWeight.w400, color: OPrimaryColor),
                          ),
                          TextSpan(
                            text: 'Knowledge Through The ',
                            style: GoogleFonts.orelegaOne(fontSize: 75, fontWeight: FontWeight.w400, color: ONetralBlack),
                          ),
                          TextSpan(
                            text: 'Food',
                            style: GoogleFonts.orelegaOne(fontSize: 75, fontWeight: FontWeight.w400, color: OPrimaryColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 20),
                  SizedBox(width: screenWidth*512, height: screenHeight * 54, child: const Text("On this page you will meet various foods with a million meanings and stories that you have never had before.").nunito20m().black().animate()
              .fadeIn(delay: 300.ms, duration: 500.ms)
              .then() // sets own delay to 800ms (300+500)
              .slide(duration: 400.ms),),
                  SizedBox(height: Get.height * 0.026),
                  OnHoverButton(
                    child: BaseButton(
                      ontap: () {
                        Get.to(const ListGastronomyPage());
                      },
                      width: 0.13 * Get.width,
                      height: 0.065 * Get.height,
                      text: "Explore The Food",
                      textSize: 18,
                      color: OPrimaryColor,
                      outlineRadius: 30.0,
                    ),
                  ),
                  SizedBox(height: screenHeight * 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 80.0),
                    child: Image.asset("assets/images/img_arrow_up.png"),
                  ),
                ],
              ),
            ),
            
            
          ],
        ),
      ],
    );
  }
}
