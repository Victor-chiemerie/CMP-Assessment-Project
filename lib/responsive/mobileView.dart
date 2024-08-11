import 'package:delivery_app/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyMobileView extends StatefulWidget {
  final double screenSize;
  const MyMobileView({
    super.key,
    required this.screenSize,
  });

  @override
  State<MyMobileView> createState() => _MyMobileViewState();
}

class _MyMobileViewState extends State<MyMobileView> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text(
              "Hi, Monica!",
              style: TextStyle(
                color: MyColors.myPurple,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Current location",
                          style: TextStyle(
                            color: MyColors.myGrey,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: MyColors.myPurple,
                              size: 22,
                            ),
                            Text(
                              "Hyderabad",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: Color.fromARGB(255, 199, 196, 196),
                              size: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.play_circle_outline_outlined,
                          color: MyColors.myPurple,
                          size: 25,
                        ),
                        Text(
                          "How it works?",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: const LinearGradient(
                      colors: [
                        MyColors.myPurple,
                        MyColors.myBlack,
                      ],
                      stops: [0.30, 0.70],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text(
                              "Enjoy your first order, the taste of our delicious food!",
                              style: TextStyle(
                                color: MyColors.myWhite,
                                fontSize: 25,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12,),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFFF6D798),),
                              ),
                              child: const Text("FIRSTPLATE01"),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assetName"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
