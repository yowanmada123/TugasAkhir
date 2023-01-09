import 'package:flutter/material.dart';
import 'package:gapulo/widget/custom_chatbot.dart';
import 'package:get/get.dart';

import '../../widget/custom_appbar.dart';
import '../global_controller.dart';
import 'home_body.dart';

class HomePage extends StatefulWidget {
  // const HomePage({super.key});
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var gstate = Get.put(GlobalController());
  
  @override
  void initState() {
    super.initState();
    gstate.selectedIndex.value = 0;
    print(gstate.selectedIndex.value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        HomeBody(),
        CustomAppBar(),
        CustomChatbot()
      ]),
    );
  }
}
