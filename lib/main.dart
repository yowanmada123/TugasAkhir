
import 'package:flutter/material.dart';
import 'package:gapulo/page/gastronomy/detailpage/gastronomy_detail_page.dart';
import 'package:gapulo/page/gastronomy/gastronomy_page.dart';
import 'package:gapulo/page/login/login_page.dart';
// import 'package:responsive_framework/responsive_framework.dart';

import 'package:get/get.dart';

import 'page/gastronomy/listpage/gastronomy_list_page.dart';
import 'page/home/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(  
      // builder: (context, child) => ResponsiveWrapper.builder(
      //     BouncingScrollWrapper.builder(context, child!),
      //     // maxWidth: 1400,
      //     // minWidth: 450,
      //     defaultScale: true,
      //     breakpoints: [
      //       const ResponsiveBreakpoint.resize(350, name: MOBILE),
      //       const ResponsiveBreakpoint.autoScale(600, name: TABLET),
      //       const ResponsiveBreakpoint.resize(800, name: DESKTOP),
      //       const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
      //       const ResponsiveBreakpoint.resize(1400, name: DESKTOP),
      //       const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
      //     ],
      //     // background: Container(color: const Color(0xFFF5F5F5))
      // ),
      title: 'Gastronomi Pulau Lombok', 
      debugShowCheckedModeBanner: false, 
      // home: LoginPage()
      home: GastronomyDetailPage()
    );
  }
}
