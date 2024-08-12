import 'package:delivery_app/utilities/colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/utilities/menuItemContainer.dart';

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
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    List<Widget> body = [
      const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Center(child: Text("Profile")),
          ),
        ],
      ),
      SingleChildScrollView(
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

              const SizedBox(height: 20),

              // Top ad Section
              SizedBox(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    adContainer(),
                    const SizedBox(width: 10),
                    adContainer(),
                    const SizedBox(width: 10),
                    adContainer(),
                  ],
                ),
              ),

              const SizedBox(height: 20),

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

              const SizedBox(height: 15),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // delivery box
                  Container(
                    height: 150,
                    width: double.infinity,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                        color: Color.fromRGBO(147, 90, 16, 1),
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        "Min 10 - Max 120",
                                        style: TextStyle(
                                          color: Color.fromRGBO(147, 90, 16, 1),
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
                                      const Color.fromRGBO(221, 142, 24, 1),
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
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // meal boxes
                      Container(
                        height: 180,
                        width: screenWidth * 0.44,
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
                                          fontSize: 16,
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
                                              fontSize: 11,
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
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Image.asset(
                                "assets/images/meal_boxes.png",
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter,
                                width: 250,
                                height: 150,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      // catering
                      Container(
                        height: 180,
                        width: screenWidth * 0.44,
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
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: 1),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.person,
                                            color:
                                                Color.fromRGBO(231, 4, 114, 1),
                                            size: 12.5,
                                          ),
                                          SizedBox(width: 4),
                                          Text(
                                            "Min 120 Guests",
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  231, 4, 114, 1),
                                              fontSize: 11,
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
                                      color: Color.fromRGBO(231, 4, 114, 1),
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Image.asset(
                                "assets/images/catering.png",
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter,
                                width: 250,
                                height: 150,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 30),

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
                ],
              ),

              const SizedBox(height: 10),

              SizedBox(
                height: 335,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const Menuitemcontainer(categories: 6, items: 9),
                    const SizedBox(width: 10),
                    const Menuitemcontainer(categories: 12, items: 40),
                    const SizedBox(width: 10),
                    const Menuitemcontainer(categories: 12, items: 40),
                    const SizedBox(width: 10),
                    seeAllMenuItem(
                      [
                        const Color.fromRGBO(252, 239, 245, 1),
                        const Color.fromRGBO(247, 218, 232, 1),
                      ],
                      const Color.fromRGBO(231, 4, 114, 1),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // meal box
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
                            "Meal Box",
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
                            "Min 10)",
                            style: TextStyle(
                              fontSize: 13,
                              color: MyColors.myGrey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 1),
                      Text(
                        "Individually packed meal boxes of happiness!",
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
                ],
              ),

              const SizedBox(height: 25),

              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    mealBoxContainer(
                      const Color.fromRGBO(237, 144, 189, 1),
                      "assets/images/3_box_item.png",
                      3,
                    ),
                    const SizedBox(width: 8),
                    mealBoxContainer(
                      const Color.fromRGBO(215, 195, 233, 1),
                      "assets/images/5_box_item.png",
                      5,
                    ),
                    const SizedBox(width: 8),
                    mealBoxContainer(
                      const Color.fromRGBO(245, 222, 181, 1),
                      "assets/images/8_box_item.png",
                      8,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

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

              const SizedBox(height: 20),

              SizedBox(
                height: 335,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const Menuitemcontainer(categories: 12, items: 40),
                    const SizedBox(width: 10),
                    const Menuitemcontainer(categories: 12, items: 40),
                    const SizedBox(width: 10),
                    const Menuitemcontainer(categories: 12, items: 40),
                    const SizedBox(width: 10),
                    seeAllMenuItem(
                      [
                        const Color.fromRGBO(251, 248, 235, 1),
                        const Color.fromRGBO(245, 231, 199, 1),
                      ],
                      const Color.fromRGBO(221, 142, 24, 1),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              // bottom divider
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Color.fromARGB(255, 209, 207, 207),
                      thickness: 0.4,
                      indent: 30,
                      endIndent: 5.0,
                    ),
                  ),
                  Text(
                    "  You Customize, We Cater!  ",
                    style: TextStyle(
                      fontSize: 11,
                      color: Color.fromARGB(255, 197, 196, 196),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color.fromARGB(255, 209, 207, 207),
                      thickness: 0.4,
                      indent: 5.0,
                      endIndent: 30,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 110),
            ],
          ),
        ),
      ),
      const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Center(child: Text("Orders")),
          ),
        ],
      ),
    ];
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
        child: Stack(
          children: [
            body[_currentIndex],
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 230,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: MyColors.myWhite,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 204, 204, 204),
                        offset: Offset(1, 2),
                        blurRadius: 2,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _currentIndex = 0;
                              });
                            },
                            icon: const Icon(
                              Icons.account_circle,
                              color: Color.fromRGBO(96, 102, 108, 1),
                              size: 25,
                            ),
                          ),
                          const Text(
                            "Profile",
                            style: TextStyle(
                              color: Color.fromRGBO(96, 102, 108, 1),
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = 1;
                          });
                        },
                        child: Container(
                          height: 50,
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset(
                            "assets/images/marketPlace.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _currentIndex = 2;
                              });
                            },
                            icon: const Icon(
                              Icons.restaurant,
                              color: Color.fromRGBO(96, 102, 108, 1),
                              size: 25,
                            ),
                          ),
                          const Text(
                            "Orders",
                            style: TextStyle(
                              color: Color.fromRGBO(96, 102, 108, 1),
                              fontSize: 10,
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
    );
  }

  /// Ad container
  Widget adContainer() {
    return Container(
      height: 140,
      width: 325,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 70, 8, 133),
            MyColors.myPurple,
          ],
          stops: [0.70, 0.30],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: SizedBox(
              width: 160,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Enjoy your first order, the taste of our delicious food!",
                    style: TextStyle(
                      color: MyColors.myWhite,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 7),
                  DottedBorder(
                    color: const Color(0xFFF6D798),
                    strokeWidth: 0.5,
                    dashPattern: const [
                      10,
                      4
                    ], // Adjust dash and space lengths as needed
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 12,
                      ),
                      child: const Text(
                        "FIRSTPLATE01",
                        style: TextStyle(
                          color: Color(0xFFF6D798),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: 140,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/elephant.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Delivery menu item
  Widget seeAllMenuItem(List<Color> backGroundColor, Color color) {
    return Container(
      width: 180,
      height: 335,
      margin: const EdgeInsets.only(bottom: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: backGroundColor,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              // Input function here
            },
            icon: Icon(
              Icons.arrow_circle_right_sharp,
              color: color,
              size: 50,
            ),
          ),
          const SizedBox(height: 14),
          Text(
            "See All",
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  /// Meal box container
  Widget mealBoxContainer(
    Color backGroundColor,
    String imagePath,
    boxNumber,
  ) {
    return Container(
      height: 120,
      width: 175,
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: 400,
                height: 400,
                alignment: Alignment.centerLeft,
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 18,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 2,
              ),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(43, 13, 73, 1),
                    Color.fromRGBO(118, 20, 217, 1),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Text(
                '$boxNumber Items Box',
                style: const TextStyle(
                  color: MyColors.myWhite,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
