import 'package:flutter/material.dart';
import 'colors.dart';

class Menuitemcontainer extends StatelessWidget {
  const Menuitemcontainer({
    super.key,
    required this.categories,
    required this.items,
  });

  final double categories;
  final double items;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      margin: const EdgeInsets.only(bottom: 5, right: 5),
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
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                child: Image.asset(
                  "assets/images/special_meal.png",
                  fit: BoxFit.cover,
                  alignment: Alignment.topLeft,
                  width: double.infinity,
                  height: 150,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 2,
                ),
                margin: const EdgeInsets.only(top: 22),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(135, 78, 194, 1),
                      Color.fromRGBO(106, 34, 178, 1),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: const Text(
                  "Popular",
                  style: TextStyle(
                    color: MyColors.myWhite,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                // name of dish
                Row(
                  children: [
                    Icon(
                      Icons.adjust,
                      color: Colors.green[900],
                      size: 18,
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      "Panjabi Special Menu",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(
                  height: 0.3,
                  color: Color.fromARGB(255, 196, 195, 195),
                ),
                const SizedBox(height: 5),

                // categories
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$categories Categories & $items Items',
                      style: const TextStyle(
                        color: MyColors.myPurple,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Input function here...
                      },
                      child: const Text(
                        "See all",
                        style: TextStyle(
                          color: MyColors.myBlack,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Divider(
                  height: 0.3,
                  color: Color.fromARGB(255, 196, 195, 195),
                ),
                const SizedBox(height: 10),

                // price
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text(
                              "Starts at ",
                              style: TextStyle(
                                color: MyColors.myGrey,
                                fontSize: 12,
                              ),
                            ),
                            Icon(
                              Icons.currency_rupee_rounded,
                              color: MyColors.myBlack,
                              size: 14,
                            ),
                            Text(
                              "299",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 2),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber[300],
                              size: 13,
                            ),
                            const Icon(
                              Icons.currency_rupee_rounded,
                              color: MyColors.myPurple,
                              size: 16,
                            ),
                            const Text(
                              "219",
                              style: TextStyle(
                                color: MyColors.myPurple,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                            const Text(
                              " / Person",
                              style: TextStyle(
                                color: MyColors.myGrey,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Icon(
                              Icons.arrow_downward,
                              color: Colors.green[900],
                              size: 16,
                            ),
                            Text(
                              "20%",
                              style: TextStyle(
                                color: Colors.green[900],
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 2),
                        const Row(
                          children: [
                            Text(
                              "with Dynamic Price for ",
                              style: TextStyle(
                                color: MyColors.myPurple,
                                fontSize: 11,
                              ),
                            ),
                            Text(
                              "100 Guests",
                              style: TextStyle(
                                color: MyColors.myBlack,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: MyColors.myGrey,
                          size: 13,
                        ),
                        Text(
                          " 10 - 600",
                          style: TextStyle(
                            color: MyColors.myGrey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}
