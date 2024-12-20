import 'package:demo_app/screens/drawer_screen.dart';
import 'package:demo_app/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../notification_screen.dart';

class AppbarWidgets extends StatelessWidget {
  const AppbarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Get.to(() => DrawerPage());
            },
            icon: Icon(
              Icons.menu,
              color: AppColors.brightWhite,
              size: 32,
            )),
        SizedBox(
          width: 12.0,
        ),
        CircleAvatar(
          radius: 16,
          backgroundColor: Colors.orange,
          child: Icon(
            Icons.directions_walk_rounded,
            color: Colors.deepOrange,
          ),
        ),
        SizedBox(
          width: 12.0,
        ),
        DropdownButton(
          items: [],
          onChanged: null,
          hint: Text(
            "08",
            style: TextStyle(
                color: AppColors.pink,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          height: 32,
          decoration: BoxDecoration(
              color: AppColors.brightWhite,
              borderRadius: BorderRadius.circular(12.0)),
          child: Row(
            children: [
              Text(
                "Statistics",
                style: TextStyle(
                    color: AppColors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 14.0,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: AppColors.blue,
              )
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          radius: 16,
          backgroundColor: AppColors.brightWhite,
          child: IconButton(
              onPressed: (){
               Get.to(() => NotificationScreen());
              },
              icon: Icon(
                Icons.notifications_on_sharp,
                color: AppColors.blue,
              )),
        )
      ],
    );
  }
}
