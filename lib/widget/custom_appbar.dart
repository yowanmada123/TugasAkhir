import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gapulo/page/gastronomy/gastronomy_page.dart';
import 'package:gapulo/page/home/homepage.dart';
import 'package:gapulo/widget/base/animation/on_hover_button.dart';
import 'package:gapulo/widget/base/ext_text.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../page/global_controller.dart';
import '../utils/colors.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = Get.width / 1536;
    double screenHeight = Get.height / 753;
    var gstate = Get.put(GlobalController());
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 80 * screenWidth),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 40),
          height: 60 * screenHeight,
          width: screenWidth * 1400,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: screenWidth * 164,
                child: const Text(
                  "Gastronomi Lombok",
                  textAlign: TextAlign.center,
                ).orelega20s().white(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 20),
                child: ListView.builder(
                    itemCount: gstate.tapbar.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            gstate.selectedIndex.value = index;
                          });
                          // ignore: avoid_print
                          print(gstate.selectedIndex.value.toString());
                          // ignore: avoid_print
                          print(gstate.tapbar[index]);
                          switch (gstate.selectedIndex.value) {
                            case 0:
                              {
                                Get.to(const HomePage());
                              }
                              break;

                            case 1:
                              {
                                Get.to(const GastronomyPage());
                              }
                              break;
                            // case 3:
                            //   {
                            //     Get.to(const HomePage());
                            //   }
                            //   break;

                            // case 4:
                            //   {
                            //     Get.to(const HomePage());
                            //   }
                            //   break;

                            default:
                              {
                                //statements;
                              }
                              break;
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 3, color: gstate.selectedIndex.value == index ? OPrimaryColor : Colors.black))),
                          padding: EdgeInsets.symmetric(horizontal: screenWidth * 50),
                          child: Center(
                              child: Expanded(
                            child: OnHoverButton(
                              child: AutoSizeText(
                                gstate.tapbar[index],
                                style: GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
                                maxLines: 1,
                              ),
                            ),
                          )
                              // Text(gstate.tapbar[index]).nunito16m().white(),
                              ),
                        ),
                      );
                    }),
              ),
              OnHoverButton(
                child: Container(
                  width: screenWidth*67.66,
                  height: screenHeight*32,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(45)),
                    padding: EdgeInsets.only(left: 4, right: 10),
                  child: Row(
                    children: [
                      Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            gradient:LinearGradient(
                            colors: [
                              Colors.orange, 
                              Colors.orangeAccent,
                              Colors.red,
                              Colors.redAccent
                              //add more colors for gradient
                            ],
                            begin: Alignment.topLeft, //begin of the gradient color
                            end: Alignment.bottomRight, //end of the gradient color
                            stops: [0, 0.2, 0.5, 0.8] //stops for individual color
                            //set the stops number equal to numbers of color
                            ), 
                          ),
                          // child: ClipRRect(
                          //   borderRadius: BorderRadius.circular(8.0),
                          //   child: Image.asset(
                          //     "assets/images/ic_profile.jpg",
                          //     width: 200,
                          //     height: 200,
                          //     fit: BoxFit.cover,
                          //   ),
                          // )
                          // Image.asset("assets/images/ic_profile.jpg"),
                          ),
                      const SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.menu)
                      // const Text(
                      //   "Ariel",
                      //   textAlign: TextAlign.center,
                      // ).nunito16s().white(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
