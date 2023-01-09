import 'package:flutter/material.dart';
import 'package:flutter_animate/animate.dart';
import 'package:flutter_animate/effects/effects.dart';
import 'package:flutter_animate/extensions/num_duration_extensions.dart';
import 'package:gapulo/widget/base/ext_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';
import '../../../widget/base/animation/on_hover_button.dart';
import '../../../widget/base/button/button_base.dart';
import '../../gastronomy/gastronomy_page.dart';

class PageOne extends StatelessWidget {
  const PageOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TabController tabController =
    //     TabControllerHandler.of(context)!.tabController;
    return Column(  
      children: [
        SizedBox(height: Get.height * 0.196),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width*120/1536),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: Get.width * 0.24,
                      height: Get.height * 0.41,
                      child: RichText(
                        text: TextSpan(
                          text: 'Art ',
                          style: GoogleFonts.orelegaOne(fontSize: 75, fontWeight: FontWeight.w400, color: OPrimaryColor),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Behind The Food is',
                              style: GoogleFonts.orelegaOne(fontSize: 75, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                            ),
                            TextSpan(
                              text: ' Rarely ',
                              style: GoogleFonts.orelegaOne(fontSize: 75, fontWeight: FontWeight.w400, color: OPrimaryColor),
                            ),
                            TextSpan(
                              text: 'Known',
                              style: GoogleFonts.orelegaOne(fontSize: 75, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.026),
                    Container(width: Get.width * 0.265, height: Get.height * 0.14, child: const Text("Food Gastronomy is the science that deals with all aspects of food. Starting from history, origins, how to cook until the food is ready to be served").nunito20m().black().animate()
                      .fadeIn(delay: 300.ms, duration: 500.ms)
                      .then() // sets own delay to 800ms (300+500)
                      .slide(duration: 400.ms),),
                    SizedBox(height: Get.height * 0.026),
                    OnHoverButton(
                      child: BaseButton(
                        ontap: () {
                          Get.to(const GastronomyPage());
                        },
                        width: 0.13 * Get.width,
                        height: 0.065 * Get.height,
                        text: "Explore The Food",
                        textSize: 18,
                        color: OPrimaryColor,
                        outlineRadius: 30,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(flex: 2, child: Image.asset("assets/images/ic_penari.png")),
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                    ItemInFirstPage(
                      screenWidth: Get.width,
                      screenHeight: Get.height,
                      description: 'Contains a list of foods and food backgrounds',
                      icon: 'assets/images/ic_recipe.png',
                      title: 'Gastronomy',
                      ontap: () {
                        Get.to(const GastronomyPage());
                      },
                    ),
                    SizedBox(height: Get.height * 0.08),
                    ItemInFirstPage(
                      screenWidth: Get.width,
                      screenHeight: Get.height,
                      description: 'Contains a list of cultures from the island of Lombok',
                      title: 'Culture',
                      icon: 'assets/images/ic_culture.png',
                    ),
                    SizedBox(height: Get.height * 0.08),
                    ItemInFirstPage(
                      screenWidth: Get.width,
                      screenHeight: Get.height,
                      description: 'Contains information about the referral village',
                      title: 'Village',
                      icon: 'assets/images/ic_village.png',
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: Get.height * 0.15),
      ],
    );
  }
}

class ItemInFirstPage extends StatelessWidget {
  const ItemInFirstPage({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    this.ontap,
    required this.title,
    required this.description,
    required this.icon,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final Function()? ontap;
  final String title;
  final String description;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: OnHoverButton(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: screenWidth * 0.03,
                  height: screenWidth * 0.03,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(100)), border: Border.all(color: Colors.black)),
                  child: Image.asset(icon),
                ),
                SizedBox(width: screenHeight * 0.03),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title).nunito20b(),
                    SizedBox(height: screenHeight * 0.005),
                    Container(width: screenWidth * 0.08, child: Text(description).nunito15s()),
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
