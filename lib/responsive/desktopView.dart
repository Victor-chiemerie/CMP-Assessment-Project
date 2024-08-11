import 'package:flutter/material.dart';

class MyDesktopView extends StatefulWidget {
  final double screenSize;
  const MyDesktopView({super.key, required this.screenSize,});

  @override
  State<MyDesktopView> createState() => _MyDesktopViewState();
}

class _MyDesktopViewState extends State<MyDesktopView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          const Text("Desktop View"),
          Text(widget.screenSize.toString()),
        ],),
      ),
    );
  }
}
