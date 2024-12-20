import 'package:demo_app/utils/constant.dart';
import 'package:flutter/material.dart';

class TextboxWidgets extends StatelessWidget {
  const TextboxWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0, bottom: 8.0, right: 12.0, left: 12.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0), color: AppColors.blue),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Ready for a\nNew Challenge?",
                style: TextStyle(
                    color: AppColors.brightWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              )
            ],
          ),
          Row(
            children: [
              Text(
                "Participate in this hackathonto solve\nAmazon's Warehouse Management!",
                style: TextStyle(
                    color: AppColors.lowWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              )
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            height: 38,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: AppColors.pink,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Learn More",
                  style: TextStyle(color: AppColors.brightWhite),
                ),
                Icon(
                  Icons.arrow_right,
                  color: AppColors.brightWhite,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
