import 'package:delivery_app/utilities/colors.dart';
import 'package:flutter/material.dart';

import '../utilities/menuItemContainer.dart';

class MyDesktopView extends StatefulWidget {
  final double screenSize;
  const MyDesktopView({
    super.key,
    required this.screenSize,
  });

  @override
  State<MyDesktopView> createState() => _MyDesktopViewState();
}

class _MyDesktopViewState extends State<MyDesktopView> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Row(
            children: [
              // side navigation bar
              SizedBox(
                height: double.infinity,
                width: screenWidth * 0.21,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: MyColors.myWhite,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 204, 204, 204),
                        offset: Offset(-1, 2),
                        blurRadius: 2,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // input function here...
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(
                              "assets/images/marketPlace.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              const Divider(
                                color: Color.fromARGB(255, 209, 207, 207),
                                thickness: 0.4,
                                indent: 5.0,
                                endIndent: 5.0,
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      // input function here...
                                    },
                                    icon: const Icon(
                                      Icons.restaurant,
                                      color: Color.fromRGBO(96, 102, 108, 1),
                                      size: 32,
                                    ),
                                  ),
                                  const Text(
                                    " Orders",
                                    style: TextStyle(
                                      color: Color.fromRGBO(96, 102, 108, 1),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: screenHeight * 0.19),
                              const Divider(
                                color: Color.fromARGB(255, 209, 207, 207),
                                thickness: 0.4,
                                indent: 5.0,
                                endIndent: 5.0,
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      // input function here...
                                    },
                                    icon: const Icon(
                                      Icons.play_circle_outline_outlined,
                                      color: MyColors.myPurple,
                                      size: 32,
                                    ),
                                  ),
                                  const Text(
                                    " How it works?",
                                    style: TextStyle(
                                      color: Color.fromRGBO(96, 102, 108, 1),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            children: [
                              const Divider(
                                color: Color.fromARGB(255, 209, 207, 207),
                                thickness: 0.4,
                                indent: 5.0,
                                endIndent: 5.0,
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      // input function here...
                                    },
                                    icon: const Icon(
                                      Icons.account_circle,
                                      color: Color.fromRGBO(96, 102, 108, 1),
                                      size: 32,
                                    ),
                                  ),
                                  const Text(
                                    " Proflie",
                                    style: TextStyle(
                                      color: Color.fromRGBO(96, 102, 108, 1),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 10),

              // market place section
              SizedBox(
                width: screenWidth * 0.55,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: MyColors.myWhite,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: Text(
                            "Hi, Monica!",
                            style: TextStyle(
                              color: MyColors.myPurple,
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        SingleChildScrollView(
                          physics: const BouncingScrollPhysics(
                            parent: AlwaysScrollableScrollPhysics(),
                          ),
                          child: Column(
                            children: [],
                          ),
                        ),

                        // Start crafting
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Start Crafting",
                              style: TextStyle(
                                color: MyColors.myBlack,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: Color.fromARGB(255, 209, 207, 207),
                                thickness: 0.4,
                                indent: 5.0,
                                endIndent: 5.0,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // delivery box
                            Container(
                              height: 150,
                              width: screenWidth * 0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromRGBO(247, 243, 226, 1),
                                    Color.fromRGBO(245, 222, 181, 1),
                                    Color.fromRGBO(247, 243, 226, 1),
                                  ],
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Delivery Box",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.person,
                                                  size: 12.5,
                                                  color: Color.fromRGBO(
                                                      147, 90, 16, 1),
                                                ),
                                                SizedBox(width: 4),
                                                Text(
                                                  "Min 10 - Max 120",
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        147, 90, 16, 1),
                                                    fontSize: 12.5,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        TextButton.icon(
                                          iconAlignment: IconAlignment.end,
                                          onPressed: () {},
                                          label: const Text("See All"),
                                          icon: const Icon(
                                            Icons.arrow_forward,
                                            size: 16,
                                          ),
                                          style: TextButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromRGBO(
                                                    221, 142, 24, 1),
                                            foregroundColor: MyColors.myWhite,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Image.asset(
                                      "assets/images/delivery_box.png",
                                      fit: BoxFit.cover,
                                      alignment: Alignment.topLeft,
                                      width: 250,
                                      height: 150,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(width: 9),

                            // meal boxes
                            Container(
                              height: 150,
                              width: screenWidth * 0.128,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromRGBO(245, 239, 250, 1),
                                    Color.fromRGBO(215, 195, 233, 1),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Meal Boxes",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(height: 1),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.person,
                                                  color: MyColors.myPurple,
                                                  size: 12.5,
                                                ),
                                                SizedBox(width: 4),
                                                Text(
                                                  "Min 10 Guests",
                                                  style: TextStyle(
                                                    color: MyColors.myPurple,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            // Input function here
                                          },
                                          icon: const Icon(
                                            Icons.arrow_circle_right_sharp,
                                            color: MyColors.myPurple,
                                            size: 27,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.vertical(
                                        bottom: Radius.circular(20),
                                      ),
                                      child: Image.asset(
                                        "assets/images/meal_boxes.png",
                                        fit: BoxFit.cover,
                                        alignment: Alignment.topCenter,
                                        width: 250,
                                        height: 200,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(width: 9),

                            // catering
                            Container(
                              height: 150,
                              width: screenWidth * 0.128,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromRGBO(248, 211, 229, 1),
                                    Color.fromRGBO(237, 144, 189, 1),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Catering",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(height: 1),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.person,
                                                  color: Color.fromRGBO(
                                                      231, 4, 114, 1),
                                                  size: 12.5,
                                                ),
                                                SizedBox(width: 4),
                                                Text(
                                                  "Min 120 Guests",
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        231, 4, 114, 1),
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            // Input function here
                                          },
                                          icon: const Icon(
                                            Icons.arrow_circle_right_sharp,
                                            color:
                                                Color.fromRGBO(231, 4, 114, 1),
                                            size: 27,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.vertical(
                                        bottom: Radius.circular(20),
                                      ),
                                      child: Image.asset(
                                        "assets/images/catering.png",
                                        fit: BoxFit.cover,
                                        alignment: Alignment.topCenter,
                                        width: 250,
                                        height: 200,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 20),

                        // Choose your platter
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Choose Your Platter",
                              style: TextStyle(
                                color: MyColors.myBlack,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: Color.fromARGB(255, 209, 207, 207),
                                thickness: 0.4,
                                indent: 5.0,
                                endIndent: 5.0,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 20),

                        // delivery box
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Delivery Box",
                                      style: TextStyle(
                                        color: MyColors.myPurple,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "(",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: MyColors.myGrey,
                                      ),
                                    ),
                                    Icon(
                                      Icons.person,
                                      size: 13,
                                      color: MyColors.myGrey,
                                    ),
                                    Text(
                                      "Min 10 - Max 50)",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: MyColors.myGrey,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 1),
                                Text(
                                  "Best for small gatherings and house parties",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 197, 196, 196),
                                  ),
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {
                                // input function here...
                              },
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(0),
                              ),
                              child: const Text(
                                "More",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: MyColors.myBlack,
                                ),
                              ),
                            ),

                            // See all
                            TextButton.icon(
                              iconAlignment: IconAlignment.end,
                              onPressed: () {
                                // input function here...
                              },
                              label: const Text(
                                "See All",
                                style: TextStyle(
                                  color: Color.fromRGBO(233, 29, 128, 1),
                                ),
                              ),
                              icon: const Icon(
                                Icons.arrow_circle_right,
                                size: 24,
                                color: Color.fromRGBO(233, 29, 128, 1),
                              ),
                              style: TextButton.styleFrom(
                                elevation: 2,
                                padding: const EdgeInsets.all(5),
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                backgroundColor: const Color.fromRGBO(
                                  255,
                                  245,
                                  250,
                                  1,
                                ),
                                foregroundColor: MyColors.myWhite,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 20),

                        SizedBox(
                          height: 335,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: const [
                              Menuitemcontainer(categories: 6, items: 9),
                              SizedBox(width: 10),
                              Menuitemcontainer(categories: 12, items: 40),
                              SizedBox(width: 10),
                              Menuitemcontainer(categories: 12, items: 40),
                              SizedBox(width: 10),
                            ],
                          ),
                        ),

                        const SizedBox(height: 20),

                        // category menus
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Catering Menus",
                                  style: TextStyle(
                                    color: MyColors.myPurple,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "(",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: MyColors.myGrey,
                                  ),
                                ),
                                Icon(
                                  Icons.person,
                                  size: 13,
                                  color: MyColors.myGrey,
                                ),
                                Text(
                                  "Min 200)",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: MyColors.myGrey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 1),
                            Text(
                              "Best for weddings, Corporate Events, Birthdays etc",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 197, 196, 196),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
