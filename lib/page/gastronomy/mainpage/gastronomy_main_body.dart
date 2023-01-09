
import 'package:flutter/material.dart';
import 'package:gapulo/page/gastronomy/mainpage/page_five.dart';
import 'package:gapulo/page/gastronomy/mainpage/page_four.dart';
import 'package:gapulo/page/gastronomy/mainpage/page_three.dart';
import 'package:gapulo/page/gastronomy/mainpage/page_two.dart';
import 'package:gapulo/page/gastronomy/mainpage/page_one.dart';

import '../../../widget/custom_footbar.dart';


class GastronomyMainBody extends StatefulWidget {
  const GastronomyMainBody({super.key});

  @override
  State<GastronomyMainBody> createState() => _GastronomyMainBodyState();
}

class _GastronomyMainBodyState extends State<GastronomyMainBody> {
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
          FootBar()
        ],
      );
  }
}