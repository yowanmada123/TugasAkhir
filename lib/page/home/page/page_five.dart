import 'package:flutter/material.dart';
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
    return Column(
      children: [ 
        SizedBox(height: Get.height * 0.043),
        RichText(
          text: TextSpan(
            text: 'Traditional ',
            style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
            children: <TextSpan>[
              TextSpan(
                text: 'Culture',
                style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: OSecondaryColor),
              ),
            ],
          ),
        ),
        SizedBox(height: Get.height * 0.014),
        SizedBox(
          width: Get.width*0.59,
          height: Get.height*0.07,
          child: const Text(
              "Lombok Island has a million local arts, including traditional dance culture. Dance is a type of performing art consisting of movement, music, and equipment that has meaning in every detail.",
              textAlign: TextAlign.center,
            ).nunito20s()),
        SizedBox(height: Get.height * 0.051),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width*0.078),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: Get.width*0.25,
                      height: Get.height*0.35,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x54000000),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(20.0), child: Image.asset("assets/images/img_tari1.png", fit: BoxFit.fill)),
                    ),
                    SizedBox(height: Get.height * 0.013),
                    const Text(
                      "Tanda Mendet Dance",
                      textAlign: TextAlign.start,
                    ).nunito30b(),
                    SizedBox(height: Get.height * 0.020),
                    SizedBox(
                      width: Get.width*0.252,
                      height: Get.height*0.12,
                      child: const Text(
                        "Tandang Mendet is usually staged by the people of Ds Sembalun, while holding the Ngayu-ayu traditional ceremony.",
                        textAlign: TextAlign.start,
                      ).nunito20s(),
                    ),
                    SizedBox(height: Get.height * 0.0065),
                    GestureDetector(
                      onTap: (){},
                      child: Row(
                        children: [
                          const Text(
                            "Learn more",
                            textAlign: TextAlign.center,
                          ).nunito20s().primary(),
                          SizedBox(width: Get.width * 0.013),
                          Image.asset("assets/images/ic_row.png")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    ClipRRect(borderRadius: BorderRadius.circular(20.0), child: Image.asset("assets/images/img_tari2.png", fit: BoxFit.fill)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: Get.width*0.013),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: Get.height * 0.44),
                          SizedBox(
                            width: Get.width*0.165,
                            height: Get.height*0.089,
                            child: const Text(
                              "Sumbawa special nguri dance",
                              textAlign: TextAlign.start,
                            ).nunito25b().white(),
                          ),
                          SizedBox(height: Get.height * 0.02),
                          GestureDetector(
                            onTap: (){},
                            child: const Text(
                              "Learn more",
                              textAlign: TextAlign.center,
                            ).nunito20s().white(),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: Get.width*0.25,
                      height: Get.height*0.35,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x54000000),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(20.0), child: Image.asset("assets/images/img_tari3.png", fit: BoxFit.fill)),
                    ),
                    SizedBox(height: Get.height * 0.013),
                    const Text(
                      "Gendeang Beleq Dance",
                      textAlign: TextAlign.start,
                    ).nunito30b(),
                    SizedBox(height: Get.height * 0.020),
                    Container(
                      width: Get.width*0.252,
                      height: Get.height*0.12,
                      child: const Text(
                        ".Gendang Beleq dance is a sacred folk dance tradition of Sasak people of Lombok in West Nusa Tenggara, Indonesia.",
                        textAlign: TextAlign.start,
                      ).nunito20s(),
                    ),
                    SizedBox(height: Get.height * 0.0065),
                    GestureDetector(
                      onTap: (){},
                      child: Row(
                        children: [
                          const Text(
                            "Learn more",
                            textAlign: TextAlign.center,
                          ).nunito20s().primary(),
                          SizedBox(width: Get.width * 0.013),
                          Image.asset("assets/images/ic_row.png")
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: Get.height * 0.079),
        Container(height: Get.height * 0.104, color: OSecondaryColor, child: ListPage()),

      ],
    );
  }
}