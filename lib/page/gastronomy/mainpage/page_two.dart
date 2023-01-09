import 'package:flutter/material.dart';
import 'package:gapulo/widget/base/button/button_base.dart';
import 'package:gapulo/widget/base/ext_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';
import '../../../widget/list_page.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = Get.width/1536;
    var screenHeight = Get.height/763;
    return Column(
      children: [
        SizedBox(height: Get.height * 0.051),
        RichText(
          text: TextSpan(
            text: 'See Our ',
            style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: ONetralBlack),
            children: <TextSpan>[
              TextSpan(
                text: 'Cullinary ',
                style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: OPrimaryColor),
              ),
              TextSpan(
                text: 'Stories',
                style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: ONetralBlack),
              ),
            ],
          ),
        ),
        SizedBox(height: screenHeight* 50),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/img_traditional_food.png"),
                  SizedBox(height: screenHeight* 13.72),
                  const Text("Traditional Food").nunito25b().black(),
                  SizedBox(height: screenHeight* 20),
                  Container(width: screenWidth*260, height: screenHeight * 85, child: const Text(
                    "Lombok traditional foods that have a lot of stories and meanings behind them",
                    textAlign: TextAlign.justify
                  ).nunito20s().black()),
                  SizedBox(height: screenHeight* 20),
                  BaseButton(
                    ontap: (){},
                    text: "See More ...",
                    color: OPrimaryColor,
                    outlineRadius: 30,
                    width: screenWidth*150,
                    height: screenHeight*50,

                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Image.asset("assets/images/img_traditional_drink.png"),
                  SizedBox(height: screenHeight* 13.72),
                  const Text("Traditional Food").nunito25b().black(),
                  SizedBox(height: screenHeight* 20),
                  Container(width: screenWidth*260, height: screenHeight * 134, child: const Text(
                    "Lombok's special drink is known as one of the areas in Indonesia that offers drinks that are not only delicious but also healthy",
                    textAlign: TextAlign.justify
                  ).nunito20s().black()),
                  SizedBox(height: screenHeight* 20),
                  BaseButton(
                    ontap: (){},
                    text: "See More ...",
                    color: OPrimaryColor,
                    outlineRadius: 30,
                    width: screenWidth*150,
                    height: screenHeight*50,

                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Image.asset("assets/images/img_traditional_dessert.png"),
                  SizedBox(height: screenHeight* 13.72),
                  const Text("Traditional Food").nunito25b().black(),
                  SizedBox(height: screenHeight* 20),
                  Container(width: screenWidth*260, height: screenHeight * 134, child: const Text(
                    "Lombok's special cakes can be one of the complementary instruments for your tour in this city of a thousand mosques.",
                    textAlign: TextAlign.justify
                  ).nunito20s().black()),
                  SizedBox(height: screenHeight* 20),
                  BaseButton(
                    ontap: (){},
                    text: "See More ...",
                    color: OPrimaryColor,
                    outlineRadius: 30,
                    width: screenWidth*150,
                    height: screenHeight*50,

                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(height: screenHeight* 33),
      ],
    );
  }
}
