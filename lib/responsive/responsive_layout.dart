import 'package:flutter/material.dart';
import 'package:mdapp/responsive/dimension.dart';

class ResponsiveLayput extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;
  const ResponsiveLayput(
      {Key? key, required this.mobile, required this.desktop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <=mobileWidth) {
        return mobile;
      } else {
        return desktop;
      }
    });
  }
}
