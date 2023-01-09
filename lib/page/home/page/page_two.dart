import 'package:flutter/material.dart';
import 'package:gapulo/widget/base/ext_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';
import '../../../widget/base/animation/on_hover_button.dart';


class PageTwo extends StatelessWidget {
  const PageTwo({
    Key? key,
  }) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Get.height * 0.09),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 120),
          child: 
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width * 0.38,
                  height: Get.height * 0.178,
                  child: Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: 'Our ',
                        style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Best Features',
                            style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: OPrimaryColor),
                          ),
                          TextSpan(
                            text: ' You Can Find Here',
                            style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.347,
                  height: Get.height * 0.07,
                  child: const Text("Most people don't know that food can not only be enjoyed in terms of taste but also the story behind the food").nunito20m(),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: Get.height * 0.034),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: (){},
                child: OnHoverButton(
                  child: Column(
                    children: [
                      Image.asset("assets/images/img_recipe.png"),
                      SizedBox(height: Get.height * 0.02),
                      const Text("Delicious Food").nunito30b(),
                      Text("See it now...", style: TextStyle(color: OPrimaryColor),).nunito30b()
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (){},
                child: OnHoverButton(
                  child: Column(
                    children: [
                      Image.asset("assets/images/img_culture.png"),
                      SizedBox(height: Get.height * 0.03),
                      const Text("Delicious Food").nunito30b(),
                      Text("See it now...", style: TextStyle(color: OPrimaryColor),).nunito30b()
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (){},
                child: OnHoverButton(
                  child: Column(
                    children: [
                      Image.asset("assets/images/img_village.png"),
                      SizedBox(height: Get.height * 0.04),
                      const Text("Delicious Food").nunito30b(),
                      Text("See it now...", style: TextStyle(color: OPrimaryColor),).nunito30b()
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: Get.height * 0.1),

      ],
    );
  }
}
