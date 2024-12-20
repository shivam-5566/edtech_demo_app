import 'package:demo_app/utils/constant.dart';
import 'package:flutter/material.dart';

class TextFieldItemsWidgets extends StatelessWidget {
  const TextFieldItemsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.0,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              "assets/icons/css.png",
              height: 30,
              width: 30,
              color: Colors.red,
            ),
            SizedBox(
              width: 12.0,
            ),
            Text(
              "HTML",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  "Beginner",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  "INR 1999",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.blue,
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  "Explore",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 12.0,
        ),
      ],
    );
  }
}
