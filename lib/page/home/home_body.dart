
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/custom_footbar.dart';
import '../global_controller.dart';
import 'page/page_five.dart';
import 'page/page_four.dart';
import 'page/page_one.dart';
import 'page/page_six.dart';
import 'page/page_three.dart';
import 'page/page_two.dart';

var gstate = Get.put(GlobalController());

@override
  void initState() {
    initState();
    gstate.selectedIndex.value = 0;
  }


class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: const [
          PageOne(),
          Divider(),
          PageTwo(),
          Divider(),
          PageThree(),
          Divider(),
          PageFour(),
          Divider(),
          PageFive(),
          Divider(),
          PageSix(),
          Divider(),
          FootBar()
        ],
      );
  }
}