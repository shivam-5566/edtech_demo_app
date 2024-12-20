import 'package:flutter/material.dart';

import '../../models/notification_view_model.dart';
class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NotificationModel(title: 'Neelu Verma has assigned a new assignment\nin Machine Learning', description: 'Today at 10:49 AM', containerTitle: 'View Assignment', color: Colors.pink,),
        NotificationModel(title: 'Continue a lesson to maintain 36 days streak', description: 'Today at 9:00 AM', containerTitle: '', color: Colors.transparent,),
        NotificationModel(title: 'New Challenge Alert! Solve the latest coding\nchallenge and make it to the leaderboard!', description: 'Wednesday at 10:49 AM', containerTitle: 'View Challenge', color: Colors.pink,),
        NotificationModel(title: 'Congratulation Champion! You have made it to\nthe leaderboard owing to your unmatched\nconsistency' , description: 'Aug 23 at 10:49 AM', containerTitle: 'View Leaderboard', color: Colors.pink,),


      ],
    );
  }
}
