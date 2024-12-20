import 'package:demo_app/utils/constant.dart';
import 'package:flutter/material.dart';

import 'widgets/notification_screen_view.dart';


class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // Initialize the TabController with 2 tabs
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications',style: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold,fontSize: 42),),
        centerTitle: true,
        bottom: TabBar(indicatorColor: AppColors.pink,padding: EdgeInsets.symmetric(horizontal: 80,),
          controller: _tabController,
          tabs: [
            Text('All',style: TextStyle(color: AppColors.pink),),
            Text('Important',),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Content for Tab 1
         NotificationView(),
          // Content for Tab 2
          Center(
            child: Text(
              '2',
              style: TextStyle(fontSize: 100),
            ),
          ),
        ],
      ),
    );
  }
}
