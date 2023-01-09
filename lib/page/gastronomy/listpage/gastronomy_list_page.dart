import 'package:flutter/material.dart';
import 'package:gapulo/utils/colors.dart';
import 'package:gapulo/widget/base/animation/on_hover_button.dart';
import 'package:gapulo/widget/base/ext_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widget/custom_appbar.dart';
import '../../global_controller.dart';
import '../detailpage/gastronomy_detail_page.dart';

class ListGastronomyPage extends StatefulWidget {
  const ListGastronomyPage({super.key});

  @override
  State<ListGastronomyPage> createState() => _ListGastronomyPageState();
}

class _ListGastronomyPageState extends State<ListGastronomyPage> {
  var gstate = Get.put(GlobalController());
  var screenWidth = Get.width / 1536;
  var screenHeight = Get.height / 763;
  @override
  void initState() {
    super.initState();
    gstate.selectedIndex.value = 1;
    print(gstate.selectedIndex.value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        ListView(
          children: [
            Stack(children: [
              Container(
                  width: Get.width,
                  height: screenHeight * 400,
                  child: FittedBox(
                    child: Image.asset('assets/images/img_menu_makanan.png'),
                    fit: BoxFit.fill,
                  )),
              Container(
                width: Get.width,
                height: screenHeight * 400,
                color: Colors.black.withOpacity(0.6),
                child: Center(
                  child: Container(
                    width: screenWidth * 957,
                    height: screenHeight * 131,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Feel a New Experience In Culinary Through',
                        style: GoogleFonts.orelegaOne(fontSize: 60, fontWeight: FontWeight.w400, color: ONetralwhite),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Gastronomy',
                            style: GoogleFonts.orelegaOne(fontSize: 60, fontWeight: FontWeight.w400, color: OPrimaryColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ]),
            SizedBox(height: screenHeight * 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 82),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Find Wonderful',
                      style: GoogleFonts.orelegaOne(fontSize: 55, fontWeight: FontWeight.w400, color: ONetralBlack),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Culinary',
                          style: GoogleFonts.orelegaOne(fontSize: 55, fontWeight: FontWeight.w400, color: OPrimaryColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 37),
            ListItem()
          ],
        ),
        const CustomAppBar(),
      ]),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = Get.width / 1536;
    var screenHeight = Get.height / 763;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 80),
      child: GestureDetector(
        onTap: () {
          Get.to(GastronomyDetailPage());
        },
        child: OnHoverButton(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Container(
                        width: screenWidth * 427,
                        height: screenHeight * 232,
                        child: FittedBox(
                          child: Image.asset("assets/images/img_recipe_ayam.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 20,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Traditional Food").nunito20s().black(),
                            Row(
                              children: [
                                Image.asset("assets/images/ic_location_primary.png"),
                                SizedBox(
                                  width: screenWidth * 10,
                                ),
                                const Text("Traditional Food").nunito18s().black(),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 10),
                        const Text("Traditional Food").nunito30b().black(),
                        SizedBox(height: screenHeight * 15),
                        const Text(
                          "Ayam Taliwang adalah makanan yang berasal dari Taliwang, Sumbawa Barat, Nusa Barat Tenggara yang bahan utamanya adalah ayam kampung muda. Ayam kampung muda dibakar dengan bumbu khas Taliwang dan ...",
                          maxLines: 4,
                        ).nunito20s().black(),
                        SizedBox(height: screenHeight * 30),
                        GestureDetector(onTap: () {}, child: const Text("Learn it more...").nunito25s().primary()),
                      ],
                    ),
                  )
                ],
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
