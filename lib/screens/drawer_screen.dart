
import 'package:demo_app/utils/constant.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.brightWhite,
      child: Column(
        children: [
          DrawerHeader(padding: EdgeInsets.symmetric(vertical: 24,horizontal: 22),
              child: ListTile(
            leading: Icon(
              Icons.account_circle,
              color: Colors.black,
              size: 32,
            ),
            title: Text(
              "Shanvi Patel",
              style: TextStyle(color: Colors.black, fontSize: 32),
            ),
          )),
          SizedBox(
            height: 55,
          ),
          ListTile(
            leading: Icon(
              Icons.monitor_outlined,
              color: AppColors.blue,
              size: 14,
            ),
            title: Text(
              "Courses",
              style: TextStyle(color: AppColors.blue, fontSize: 18),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.note_alt,
              color: AppColors.blue,
              size: 14,
            ),
            title: Text(
              "Assignments",
              style: TextStyle(color: AppColors.blue, fontSize: 18),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.add_chart_sharp,
              color: AppColors.blue,
              size: 16,
            ),
            title: Text(
              "Progress",
              style: TextStyle(color: AppColors.blue, fontSize: 18),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.bug_report_rounded,
              color: AppColors.blue,
              size: 16,
            ),
            title: Text(
              "Reports",
              style: TextStyle(color: AppColors.blue, fontSize: 18),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.account_balance_wallet_sharp,
              color: AppColors.blue,
              size: 16,
            ),
            title: Text(
              "Blogs",
              style: TextStyle(color: AppColors.blue, fontSize: 18),
            ),
          ),
          SizedBox(height: 55,),
          ListTile(
            leading: Icon(
              Icons.help_outline_rounded,
              color: AppColors.grey,
              size: 16,
            ),
            title: Text(
              "Help",
              style: TextStyle(color: AppColors.grey, fontSize: 18),
            ),
          ),
          GestureDetector(onTap: (){
            Navigator.pop(context);
          },
            child: ListTile(
              leading: Icon(
                Icons.logout_rounded,
                color: AppColors.pink,
                size: 16,
              ),
              title: Text(
                "Logout Account",
                style: TextStyle(color: AppColors.pink, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
