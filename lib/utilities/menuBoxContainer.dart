import 'package:flutter/material.dart';
import 'colors.dart';

class MenuBoxContainer extends StatelessWidget {
  const MenuBoxContainer({
    super.key,
    required this.backGroundColor,
    required this.imagePath,
    required this.boxNumber,
  });
  final Color backGroundColor;
  final String imagePath;
  final double boxNumber;

  @override
  Widget build(BuildContext context) {
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
    ;
  }
}
