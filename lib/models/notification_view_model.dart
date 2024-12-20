import 'package:demo_app/utils/constant.dart';
import 'package:flutter/material.dart';

class NotificationModel extends StatelessWidget {
  final String title;
  final String description;
  final String containerTitle;
  final Color color;
  const NotificationModel(
      {super.key,
      required this.title,
      required this.description,
      required this.containerTitle,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      padding: EdgeInsets.all(14.0),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(42),child: Image.asset("assets/icons/user.png",height: 28,width: 28,color: AppColors.pink,),),
          SizedBox(
            width: 14,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(color: AppColors.black, fontSize: 10),
              ),
              Container(padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0), color: color),
                child: Center(
                  child: Text(
                    containerTitle,
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                ),
              ),
              Text(
                description,
                style: TextStyle(color: AppColors.grey, fontSize: 10,),
              ),
            ],
          )
        ],
      ),
    );
  }
}
