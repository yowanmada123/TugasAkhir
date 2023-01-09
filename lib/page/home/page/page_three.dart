import 'package:flutter/material.dart';
import 'package:gapulo/widget/base/ext_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/colors.dart';
import '../../../widget/base/animation/on_hover_button.dart';


class PageThree extends StatelessWidget {
  const PageThree({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Get.height * 0.09),
        Stack(
          children: [
            Container(
              height: Get.height * 0.89,
              width: Get.width * 0.77,
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: Get.width* 0.037, top: Get.height*0.06),
                        width: Get.width * 0.76,
                        height: Get.height* 0.45,
                        decoration: BoxDecoration(
                          color: OSecondaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(40))
                        ),
                        child: Row(
                          children: [
                            OnHoverButton(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: Get.width * 0.076,
                                    height: Get.height* 0.153,
                                    // decoration: BoxDecoration(
                                    //   color: Colors.white,
                                    // borderRadius: BorderRadius.all(Radius.circular(100))
                                    // ),
                                    child: Image.asset("assets/images/img_plant.png", fit: BoxFit.fill,)
                                  ),
                                  SizedBox(height: Get.height *0.0288),
                                  Text("Livestock & farming").nunito15b(),
                                  GestureDetector(
                                    onTap: (){},
                                    child: Text("See it nonw...", style: TextStyle(color: OPrimaryColor),).nunito15b()),
                                ],
                              ),
                            ),
                            SizedBox(width: Get.height * 0.052),
                            OnHoverButton(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: Get.width * 0.076,
                                    height: Get.height* 0.153,
                                    // decoration: BoxDecoration(
                                    //   color: Colors.white,
                                    // borderRadius: BorderRadius.all(Radius.circular(100))
                                    // ),
                                    child: Image.asset("assets/images/img_tools.png", fit: BoxFit.fill,)
                                  ),
                                  SizedBox(height: Get.height *0.0288),
                                  Text("Tools Preparation").nunito15b(),
                                  GestureDetector(
                                    onTap: (){},
                                    child: Text("See it nonw...", style: TextStyle(color: OPrimaryColor),).nunito15b()),
                                ],
                              ),
                            ),
                            SizedBox(width: Get.height * 0.052),
                            OnHoverButton(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: Get.width * 0.076,
                                    height: Get.height* 0.153,
                                    // decoration: BoxDecoration(
                                    //   color: Colors.white,
                                    // borderRadius: BorderRadius.all(Radius.circular(100))
                                    // ),
                                    child: Image.asset("assets/images/img_platting.png", fit: BoxFit.fill,)
                                  ),
                                  SizedBox(height: Get.height *0.0288),
                                  Text("Plating On Plate").nunito15b(),
                                  GestureDetector(
                                    onTap: (){},
                                    child: Text("See it nonw...", style: TextStyle(color: OPrimaryColor),).nunito15b()),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: Get.width * 0.369,
                        height: Get.height* 0.89,
                        child: Image.asset("assets/images/img_ayam.png", width: Get.width * 0.5, height: Get.height* 0.95,)),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: Get.width * 0.418,
                          height: Get.height * 0.1,
                          child: RichText(
                            text: TextSpan(
                              text: 'How we ',
                              style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Serve',
                                  style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: OPrimaryColor),
                                ),
                                TextSpan(
                                  text: ' you ?',
                                  style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                                ),
                                // TextSpan(
                                //   text: 'Known',
                                //   style: GoogleFonts.orelegaOne(fontSize: 75, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                                // ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: Get.height * 0.052),
                        Container(
                          width: Get.width * 0.397,
                          height: Get.height * 0.212,
                          child: Text("For the first time, you have to know how to process your food until it is served and ready to eat. Cause knowledge in every process of serving the food until it ready to eat will give you a new culinary experience. starting from farming and breeders and waiting for harvest, followed by the selection of raw materials, preparation of tools, cooking food, and preparation of serving until ready to eat").nunito20m()),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(height: Get.height * 0.0851),
      ],
    );
  }
}