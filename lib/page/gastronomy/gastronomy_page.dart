import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/custom_appbar.dart';
import '../../widget/custom_chatbot.dart';
import '../global_controller.dart';
import 'mainpage/gastronomy_main_body.dart';



class GastronomyPage extends StatefulWidget {
  const GastronomyPage({super.key});

  @override
  State<GastronomyPage> createState() => _GastronomyPageState();
}

class _GastronomyPageState extends State<GastronomyPage> {
  var gstate = Get.put(GlobalController());
  @override
  void initState() {
    super.initState();
    gstate.selectedIndex.value = 1;
    print(gstate.selectedIndex.value);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: const [
        GastronomyMainBody(),
        CustomAppBar(),
        CustomChatbot()
      ]),
    );
  }
}
