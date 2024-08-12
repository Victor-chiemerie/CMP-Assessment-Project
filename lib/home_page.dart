import 'package:delivery_app/responsive/desktopView.dart';
import 'package:delivery_app/responsive/mobileView.dart';
import 'package:delivery_app/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ResponsiveLayout(
        mobileView: MyMobileView(
          screenSize: screenWidth,
        ),
        desktopView: MyDesktopView(
          screenSize: screenWidth,
        ),
      ),
    );
  }
}
