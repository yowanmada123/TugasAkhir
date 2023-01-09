import 'package:flutter/material.dart';
import 'package:gapulo/utils/colors.dart';
import 'package:gapulo/widget/base/ext_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../../../widget/base/widget/rounded_image.dart';
import '../../../widget/custom_appbar.dart';
import '../../global_controller.dart';

class GastronomyDetailPage extends StatefulWidget {
  const GastronomyDetailPage({super.key});

  @override
  State<GastronomyDetailPage> createState() => _GastronomyDetailPageState();
}

class _GastronomyDetailPageState extends State<GastronomyDetailPage> {
  var gstate = Get.put(GlobalController());
  var screenWidth = Get.width / 1536;
  var screenHeight = Get.height / 763;
  final List<String> recipes = <String>['750 gram ayam kampung', '1,5 liter air', '1 buah jeruk nipis', '1 sdt gula pasir', '1 sdt gula pasir', '750 gram ayam kampung', '1 buah jeruk nipis', 'garam secukupnya', '1 sdt gula pasir', '1 buah jeruk nipis', '1 buah jeruk nipis', '1 sdt gula pasir', '1 buah jeruk nipis', '1,5 liter air', '750 gram ayam kampung', 'garam secukupnya'];
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
        Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(children: [
                  Container(
                      width: Get.width,
                      height: screenHeight * 400,
                      child: FittedBox(
                        child: Image.asset('assets/images/img_bg_detail_page.png'),
                        fit: BoxFit.cover,
                      )),
                  Container(
                    width: Get.width,
                    height: screenHeight * 390,
                    color: Colors.black.withOpacity(0.6),
                    child: Center(
                      child: Container(
                        width: screenWidth * 957,
                        height: screenHeight * 131,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'This is The Perfect Time To Get a New Travel Experience',
                            style: GoogleFonts.orelegaOne(fontSize: 60, fontWeight: FontWeight.w400, color: ONetralwhite),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' For You',
                                style: GoogleFonts.orelegaOne(fontSize: 60, fontWeight: FontWeight.w400, color: OPrimaryColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 82),
                  child: Column(
                    children: [
                      SizedBox(height: screenHeight * 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            // textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'Discover',
                              style: GoogleFonts.orelegaOne(fontSize: 55, fontWeight: FontWeight.w400, color: ONetralBlack),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' Wonderful',
                                  style: GoogleFonts.orelegaOne(fontSize: 55, fontWeight: FontWeight.w400, color: OPrimaryColor),
                                ),
                                TextSpan(
                                  text: ' Gastronomy',
                                  style: GoogleFonts.orelegaOne(fontSize: 55, fontWeight: FontWeight.w400, color: ONetralBlack),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 41),
                      Column(
                        children: [
                          RoundedImage(
                            height: screenHeight * 135,
                            image: 'assets/images/img_detail_long.png',
                            outlineRounded: 10,
                          ),
                          SizedBox(height: screenHeight * 10),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: RoundedImage(
                                  height: screenHeight * 135,
                                  image: 'assets/images/img_detail_1.png',
                                  outlineRounded: 10,
                                ),
                              ),
                              SizedBox(width: screenWidth * 10),
                              Expanded(
                                  flex: 1,
                                  child: RoundedImage(
                                    image: "assets/images/img_detail_2.png",
                                    outlineRounded: 10,
                                    height: screenHeight * 135,
                                    width: Get.width,
                                  )),
                              SizedBox(width: screenWidth * 10),
                              Expanded(
                                  flex: 1,
                                  child: RoundedImage(
                                    image: "assets/images/img_detail_3.png",
                                    outlineRounded: 10,
                                    height: screenHeight * 135,
                                    width: Get.width,
                                  )),
                              SizedBox(width: screenWidth * 10),
                              Expanded(
                                  flex: 1,
                                  child: RoundedImage(
                                    image: "assets/images/img_detail_4.png",
                                    outlineRounded: 10,
                                    height: screenHeight * 135,
                                    width: Get.width,
                                  )),
                              SizedBox(width: screenWidth * 10),
                              Expanded(
                                  flex: 1,
                                  child: RoundedImage(
                                    image: "assets/images/img_detail_5.png",
                                    outlineRounded: 10,
                                    height: screenHeight * 135,
                                    width: Get.width,
                                  )),
                              SizedBox(width: screenWidth * 10),
                              Expanded(
                                  flex: 1,
                                  child: RoundedImage(
                                    image: "assets/images/img_detail_6.png",
                                    outlineRounded: 10,
                                    height: screenHeight * 135,
                                    width: Get.width,
                                  )),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 42),
                      Text(
                        "All existing food and beverages are produced from raw materials sourced from nature with the help of human hands. Any raw materials such as vegetables, fruit, and chicken or beef can be found easily on the islands of lombok. Coconut, coffee, cloves, tobacco, tamarind, areca nut and many types of agricultural and plantation crops can be found here. Every raw material for vegetables, fruits, and meat animals is cultivated properly by farmers and ranchers. Within a certain period each raw material will enter the ripe stage and ready to be harvested and goes to the sorting stage on the best products for the best quality in food.",
                        textAlign: TextAlign.justify,
                      ).nunito20s().black(),
                      SizedBox(height: screenHeight * 30),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Traditional Food").nunito20s().primary(),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                const Text("Ayam Taliwang").orelega50s().black(),
                                SizedBox(height: screenHeight * 15),
                                Container(
                                  child: Text(
                                    "Kemunculan ayam taliwang sendiri pertama kali pada saat terjadi perang antara Kerajaan Selaparang dan Kerajaan Karangasem Bali. Pada masa itu pasukan Kerajaan Taliwang didatangkan ke Lombok untuk membantu Kerajaan Selaparang yang mendapat serangan dari kerajaan Karangasem Bali. Orang-orang Taliwang yang bertugas sebagai pendamai tersebut ditempatkan di suatu wilayah yang diberi nama Karang Taliwang sesuai dengan tempat mereka. Tugas orang-orang Taliwang ini adalah melakukan pendekatan dengan Raja Karangasem agar pertempuran yang menelan banyak kerugian nyawa dan harta benda tidak berlanjut. Dalam misi perdamaian itu ikut serta para pemuka Agama Islam, juru kuda  dan juru masak. Masing-masing memiliki tugas tersendiri.  Pemuka agama bertugas memberi tuntunan kehidupan kepada masyarakat dan melakukan pendekatan dengan Raja Karangasem. Juru kuda bertugas menjaga dan memilihara kuda. Juru masak bertugas menyiapkan logistik. Sejalan dengan tugas dan misi yang dijalankan, para juru masak dari Kerajaan Taliwang itu melakukan tugasnya dengan baik. Mereka mengolah dan memasak berbagai bahan makanan menjadi santapan para peminpin perang beserta para prajurit. Salah satunya adalah pembuatan ayam bakar dengan campuran bumbu-bumbu tertentu sesuai selera dan tradisi masyarakat bersangkutan. Seiring berjalannya waktu para prajurit pun berbaur dengan masyarakat suku Sasak. Dari sosialisasi tersebut pada akhirnya suku Sasak bisa mencicipi enaknya ayam Taliwang dan mereka saling berbagi ilmu tentang cara pengolahannya dengan memanfaatkan bumbu-bumbu sederhana. Selain itu juga terjadi pembauran yang dominan adalah mengadopsi berbagai bentuk pengetahuan dan tatacara kehidupan sehari-hari. Misalnya pada pola makan dan pengolahan bahan makanan. Dalam hal pola makan dan jenis makanan yang diolah cenderung mengadopsi budaya masyarakat Sasak yang menyukai masakan pedas. Daging ayam diolah menjadi ayam pelalah dengan citarasa pedas. Ayam pelalah inilah yang menjadi cikal bakal dari ayam taliwang.  Bumbu-bumbu yang digunakan berasal dari hasil alam sekitarnya seperti bawang merah, bawang putih, cabai, garam, dan terasi. Pada masa itu hasil olahan ayam merupakan makanan istimewa yang digunakan sebagai hidangan pada saat-saat tertentu dan hanya untuk pemenuhan konsumsi sendiri.",
                                    textAlign: TextAlign.justify,
                                  ).nunito20s().black(),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 40),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text("History").orelega40s().black(),
                        ],
                      ),
                      SizedBox(height: screenHeight * 29),
                      Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: RoundedImage(
                                image: "assets/images/img_history_1.png",
                                outlineRounded: 10,
                                height: screenHeight * 198,
                                width: Get.width,
                              )),
                          SizedBox(width: screenWidth * 10),
                          Expanded(
                              flex: 1,
                              child: RoundedImage(
                                image: "assets/images/img_history_2.png",
                                outlineRounded: 10,
                                height: screenHeight * 198,
                                width: Get.width,
                              )),
                          SizedBox(width: screenWidth * 10),
                          Expanded(
                              flex: 1,
                              child: RoundedImage(
                                image: "assets/images/img_history_3.png",
                                outlineRounded: 10,
                                height: screenHeight * 198,
                                width: Get.width,
                              )),
                          SizedBox(width: screenWidth * 10),
                          Expanded(
                              flex: 1,
                              child: RoundedImage(
                                image: "assets/images/img_history_4.png",
                                outlineRounded: 10,
                                height: screenHeight * 198,
                                width: Get.width,
                              )),
                        ],
                      ),
                      SizedBox(height: screenHeight * 29),
                      Text(
                        "The first appearance of the Taliwang chicken was during the war between the Selaparang Kingdom and the Karangasem Kingdom of Bali. At that time the troops of the Taliwang Kingdom, located on Sumbawa Island, in the west, were brought to Lombok to help the Selaparang Kingdom which was under attack from the Karangasem kingdom of Bali. The Taliwang people who served as peacekeepers were placed in an area which was named Karang Taliwang according to their place. The task of the Taliwang people is to approach the King of Karangasem so that the battle that cost lives and property does not continue. In the peace mission, Islamic religious leaders, horsemen and cooks participated. Each has its own task. Religious leaders are tasked with giving life guidance to the community and approaching the King of Karangasem. The horseman is in charge of guarding and maintaining the horses. The cook is in charge of preparing the logistics. In line with the tasks and missions carried out, the cooks from the Taliwang Kingdom did their job well. They process and cook various foodstuffs to be eaten by war leaders and soldiers. One of them is making grilled chicken with a mixture of certain spices according to the tastes and traditions of the people concerned. Over time, the soldiers mingled with the Sasak people. From this socialization, finally the Sasak tribe can taste the delicious Taliwang chicken and they share knowledge about how to process it by using simple spices. In addition, the dominant assimilation is adopting various forms of knowledge and daily life procedures. For example in diet and food processing. In terms of diet and the type of food processed, they tend to adopt the culture of the Sasak people who like spicy food. Chicken meat is processed into spicy chicken with a spicy taste. Pelalah chicken is the forerunner of Taliwang chicken. The spices used come from the surrounding natural products such as shallots, garlic, chilies, salt, and shrimp paste. At that time, processed chicken was a special food that was used as a dish at certain times and only for self-consumption.",
                        textAlign: TextAlign.justify,
                      ).nunito20s().black(),
                      SizedBox(height: screenHeight * 40),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text("Culture").orelega40s().black(),
                        ],
                      ),
                      SizedBox(height: screenHeight * 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            child: Container(
                              width: screenWidth * 230,
                              height: screenHeight * 150,
                              child: FittedBox(
                                child: Image.asset("assets/images/img_recipe_ayam.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: screenWidth * 30),
                          Expanded(
                            child: Text(
                              "Over time, it was unexpected that the enjoyment of this meal was very popular with the people of Lombok. Slowly but surely they often make this food for a meal that is usually enjoyed with the family. Until now, Taliwang chicken is also sold in stalls and restaurants so that it is closer to the community and becomes a Lombok culinary specialty that must be tasted by tourists when visiting NTB.",
                              textAlign: TextAlign.justify,
                            ).nunito20s().black(),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 40),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text("Food Party Of Life Style").orelega40s().black(),
                        ],
                      ),
                      SizedBox(height: screenHeight * 12),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "The food party of lifestyle here has traditional meanings that often include food menus related to Ayam Taliwang",
                            textAlign: TextAlign.justify,
                          ).nunito20s().black(),
                        ],
                      ),
                      SizedBox(height: screenHeight * 20),
                      Container(
                        height: screenHeight * 513,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    child: RoundedImage(
                                  image: "assets/images/img_recipe_ayam.png",
                                  outlineRounded: 20,
                                  height: screenHeight * 246,
                                )),
                                SizedBox(width: screenWidth * 20),
                                Expanded(child: RoundedImage(image: "assets/images/img_recipe_ayam.png", outlineRounded: 20, height: screenHeight * 246)),
                                SizedBox(width: screenWidth * 20),
                                Expanded(child: RoundedImage(image: "assets/images/img_recipe_ayam.png", outlineRounded: 20, height: screenHeight * 246)),
                              ],
                            ),
                            SizedBox(height: screenHeight * 20),
                            Row(
                              children: [
                                Expanded(child: RoundedImage(image: "assets/images/img_recipe_ayam.png", outlineRounded: 20, height: screenHeight * 246)),
                                SizedBox(width: screenWidth * 20),
                                Expanded(child: RoundedImage(image: "assets/images/img_recipe_ayam.png", outlineRounded: 20, height: screenHeight * 246)),
                                SizedBox(width: screenWidth * 20),
                                Expanded(child: RoundedImage(image: "assets/images/img_recipe_ayam.png", outlineRounded: 20, height: screenHeight * 246)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * 40),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text("Let’s Make Ayam Taliwang").orelega40s().black(),
                        ],
                      ),
                      SizedBox(height: screenHeight * 25),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                RoundedImage(image: "assets/images/img_recipe_ayam.png", outlineRounded: 20, height: screenHeight * 342.5),
                                SizedBox(height: screenHeight * 20.5),
                                RoundedImage(image: "assets/images/img_recipe_ayam.png", outlineRounded: 20, height: screenHeight * 342.5),
                              ],
                            ),
                          ),
                          SizedBox(width: screenWidth * 20),
                          RoundedImage(image: "assets/images/img_recipe_ayam.png", outlineRounded: 20, height: screenHeight * 700, width: screenWidth * 590),
                        ],
                      ),
                      SizedBox(height: screenHeight * 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Main Ingredients").nunito25eb().black(),
                                SizedBox(height: screenHeight * 2),
                                Container(
                                    width: Get.width,
                                    height: screenHeight * 500,
                                    child: ListView.builder(
                                      // padding: const EdgeInsets.all(8),
                                      itemCount: recipes.length,
                                      itemBuilder: (BuildContext context, int index) {
                                        return Text('${recipes[index]}').nunito20s().black();
                                      },
                                    ))
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Fine Seasoning Ingredients").nunito25eb().black(),
                                // const Text('''
                                //       750 gram ayam kampung
                                //       1,5 liter air
                                //       1 buah jeruk nipis
                                //       1 sdt gula pasir
                                //       garam secukupnya
                                //       750 gram ayam kampung
                                //       1,5 liter air
                                //       1 buah jeruk nipis
                                //       1 sdt gula pasir
                                //       garam secukupnya
                                //       750 gram ayam kampung
                                //       1,5 liter air
                                //       1 buah jeruk nipis
                                //       1 sdt gula pasir
                                //       garam secukupnya
                                //       750 gram ayam kampung
                                //       1,5 liter air
                                //       1 buah jeruk nipis
                                //       1 sdt gula pasir
                                //       garam secukupnya
                                //       ''',
                                //       // textAlign: TextAlign.left,
                                //       ).nunito20s().black()
                              ],
                            ),
                          ),
                        ],
                      ),

                      // Row(
                      //   children: [
                      //     Column(
                      //       children: [
                      //         RoundedImage(image:"assets/images/img_recipe_ayam.png" ,outlineRounded: 20, height: screenHeight * 342.5, ),

                      //         SizedBox(height: screenHeight*20.5),
                      //         RoundedImage(image:"assets/images/img_recipe_ayam.png" ,outlineRounded: 20, height: screenHeight * 342.5, ),

                      //       ],
                      //     ),
                      //     SizedBox(width: screenWidth*20),
                      //     ClipRRect(
                      //         borderRadius: BorderRadius.all(Radius.circular(20)),
                      //         child: Container(
                      //           // width: screenWidth * 230,
                      //           height: screenHeight * 700,
                      //           child: FittedBox(
                      //             child: Image.asset("assets/images/img_recipe_ayam.png"),
                      //             fit: BoxFit.cover,
                      //           ),
                      //         ),
                      //       ),
                      //   ],
                      // ),
                      SizedBox(width: screenWidth * 40),
                    ],
                  ),
                )
              ],
            ),
          ),
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
    );
  }
}
