import 'package:flutter/material.dart';
import 'package:gapulo/widget/base/button/button_base.dart';
import 'package:gapulo/widget/base/ext_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';
import '../../../widget/list_page.dart';

class PageThree extends StatelessWidget {
  const PageThree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = Get.width / 1536;
    var screenHeight = Get.height / 763;
    return Column(
      children: [
        SizedBox(height: Get.height * 0.051),
        Padding(
          padding: EdgeInsets.only(left: screenWidth * 120),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Most Popular ',
                      style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: ONetralBlack),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Foods',
                          style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: OPrimaryColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/img_bottom_line.png"),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: screenHeight * 64),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 120),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: ItemWidget(
                  screenHeight: screenHeight, 
                  screenWidth: screenWidth,
                  name: "Ayam Taliwang",
                  description: "Ayam Taliwang is a menu of grilled chicken made from young free-range chicken seasoned with dried red chilies, shallots, garlic, tomatoes, fried shrimp paste, kencur...",
                  image: "assets/images/img_most_ayam.png",
                  onPressed: (){},
                  ),
              ),
              SizedBox(width: screenWidth * 19),
              Expanded(
                flex: 1,
                child: ItemWidget(
                  screenHeight: screenHeight, 
                  screenWidth: screenWidth,
                  name: "Plecing Kangkung",
                  description: "The kale itself is the key to the appeal of this menu. In fact, it is common knowledge that kale from Lombok has a texture to a more distinctive taste.",
                  image: "assets/images/img_most_plecik.png",
                  onPressed: (){},
                  ),
              ),
              SizedBox(width: screenWidth * 19),
              Expanded(
                flex: 1,
                child: ItemWidget(
                  screenHeight: screenHeight, 
                  screenWidth: screenWidth,
                  name: "Beberuk Terong",
                  description: "The freshness of this eggplant is doubled if -for example, you are interested- you add a few drops of lime juice over the chili sauce.",
                  image: "assets/images/img_most_beberuk.png",
                  onPressed: (){},
                  ),
              ),
              
            ],
          ),
        ),
        SizedBox(height: screenHeight * 90),
      ],
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.name,
    required this.image,
    required this.description, required this.onPressed,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final String name;
  final String image;
  final String description;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      height: screenHeight * 550,
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), border: Border.all(color: Colors.black.withOpacity(0.2))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          SizedBox(height: screenHeight * 13.72),
          Text(name).nunito25b().black(),
          SizedBox(height: screenHeight * 20),
          Expanded(
            child: Text(description, textAlign: TextAlign.justify).nunito20s().black(),
          ),
          SizedBox(height: screenHeight * 20),
          BaseButton(
            ontap: onPressed,
            text: "See More ...",
            color: OPrimaryColor,
            outlineRadius: 30,
            width: screenWidth * 150,
            height: screenHeight * 50,
          )
        ],
      ),
    );
  }
}
