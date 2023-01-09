import 'package:flutter/material.dart';
import 'package:gapulo/widget/base/button/button_base.dart';
import 'package:gapulo/widget/base/ext_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';
import '../../../widget/list_page.dart';

class PageFour extends StatelessWidget {
  const PageFour({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = Get.width / 1536;
    var screenHeight = Get.height / 763;
    return Column(
      children: [
        Stack(children: [
          Container(
              width: Get.width,
              height: screenHeight * 411,
              child: FittedBox(
                child: Image.asset('assets/images/img_adat_lombok.png'),
                fit: BoxFit.fill,
              )),
          Container(
            width: Get.width,
            height: screenHeight * 411,
            color: Colors.black.withOpacity(0.6),
            child: Center(
              child: Container(
                width: screenWidth * 957,
                height: screenHeight * 131,
                child: Text("Read The Stories Behind Lombok Uniq Taste & Presentation", textAlign: TextAlign.center).orelega60s().white(),
              ),
            ),
          )
        ]),
        SizedBox(height: screenHeight * 39),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 120),
          child: Row(
            children: [
              ItemWidget(
                screenWidth: screenWidth, 
                screenHeight: screenHeight, 
                description: 'Peresean or perisean is a fight between two men armed with rattan sticks (penjalin) and shielded by thick and hard buffalo skin (shield called ende). This tradition is carried out by the people of the Sasak tribe, Lombok, West Nusa Tenggara, Indonesia. Peresean is included in the art of dance in the Lombok region.', 
                image: "assets/images/img_peserean.png", 
                name: 'Sajian Adat Peserean', 
                onPressed: () {},
              ),
              SizedBox(width: screenWidth * 60),
              ItemWidget(
                screenWidth: screenWidth, 
                screenHeight: screenHeight, 
                description: 'The aqiqahan tradition in the Sasak tribe is called Ngurisan. This grieving tradition is carried out as a form of gratitude for parents for having been given a baby by the Creator. This tradition that has been passed down from generation to generation is still being preserved today. The Sasak tribe is indeed one of the tribes in the archipelago which is famous for its determination to maintain ancestral traditions. And this is the main attraction of the Sasak tribe.', 
                image: "assets/images/img_aqiqah.png", 
                name: 'Aqiqah', 
                onPressed: () {},
              ),
              SizedBox(width: screenWidth * 60),
              ItemWidget(
                screenWidth: screenWidth, 
                screenHeight: screenHeight, 
                description: 'Nyunatan (circumcision) apart from being a traditional event, is also a religious event in this case known as "Nyuntan". In general, the Sasak tribe who embraced Islam in their teachings ordered boys to be circumcised (Nyunatan).', 
                image: "assets/images/img_nyunatang.png", 
                name: 'Nyunatang', 
                onPressed: () {},
              ),
            ],
          ),
        )
      ],
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
