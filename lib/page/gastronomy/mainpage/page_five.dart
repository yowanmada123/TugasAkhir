import 'package:flutter/material.dart';
import 'package:gapulo/widget/base/button/button_base.dart';
import 'package:gapulo/widget/base/ext_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';
import '../../../widget/list_page.dart';

class PageFive extends StatelessWidget {
  const PageFive({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = Get.width / 1536;
    var screenHeight = Get.height / 763;
    return Column(
      children:[ 
        SizedBox(height: screenHeight * 88),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 80),
          child: Container(
            padding: EdgeInsets.all(60),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: ONetralBlack
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("Good food, Good Mood, Good Experience").orelega60s().white(),
                SizedBox(height: screenHeight * 44),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Container(
                        width: screenWidth * 672,
                        height: screenHeight * 386,
                        child: FittedBox(
                          child: Image.asset("assets/images/img_list_menu.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 35),

                    Expanded(child: Container(child: Text("The role of gastronomy is to preserve the culture or traditions of the food, one of which is by studying the history of the cuisine and its relationship with a particular ethnicity. One example of national food that has gone global due to the globalization process is Japanese cuisine."
                    , textAlign: TextAlign.justify,
                    ).nunito25b().white())),

                  ],
                )    
              ],
            ),
          )
        ),
        SizedBox(height: screenHeight * 88),
      ]
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.image,
    required this.name,
    required this.description, required this.onPressed,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final String image;
  final String name;
  final String description;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Container(
            width: screenWidth * 380,
            height: screenHeight * 179,
            child: FittedBox(
              child: Image.asset(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: screenHeight * 17),
        Text(name).nunito25b().black(),
        SizedBox(height: screenHeight * 9),
        Container(
            width: screenWidth * 387,
            height: screenHeight * 86,
            child: Text(
              description,
              textAlign: TextAlign.justify,
              maxLines: 3,
            ).nunito20s().black()),
        GestureDetector(
          child: Text("Learn more ...").nunito16b().primary(),
          onTap: () {},
        ),
      ],
    );
  }
}
