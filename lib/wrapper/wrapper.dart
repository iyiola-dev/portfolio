import 'package:flutter/material.dart';
import 'package:portfolio/wrapper/mobile/mobile.dart';
import 'package:portfolio/wrapper/webView/web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Mobile(),
      desktop: Web(),
    );
  }
}
