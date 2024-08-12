import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

class AdsContainer extends StatelessWidget {
  const AdsContainer({
    super.key,
    required this.containerWidth,
    required this.textBoxWidth,
    this.imageWidth = 140,
  });

  final double containerWidth;
  final double textBoxWidth;
  final double? imageWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: containerWidth,
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
              width: textBoxWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
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
          ClipRRect(
            borderRadius: const BorderRadius.horizontal(
              right: Radius.circular(20),
            ),
            child: Image.asset(
              "images/elephant.png",
              height: double.infinity,
              width: imageWidth,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
